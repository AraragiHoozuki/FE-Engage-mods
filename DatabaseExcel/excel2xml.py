import sys
import openpyxl

def main():
    file = sys.argv[1]
    xml = '<?xml version="1.0" encoding="utf-8"?>\n'
    wb = openpyxl.load_workbook(filename = file)
    xml += '<Book Count="{}">\n'.format(len(wb.sheetnames)/2)
    for name in wb.sheetnames:
        if not name.endswith('Header'):
            header = wb[name + 'Header']
            sheet = wb[name]
            xml += '\t<Sheet Name="{name}" Count="{count}">\n'.format(name = name, count = sheet.max_row - 1)

            xml += '\t\t<Header>\n'
            for row in range(2, header.max_row + 1):
                xml += '\t\t\t<Param '
                for column in range(1, header.max_column + 1):
                    xml += '{key}="{value}" '.format(key = header.cell(row = 1, column = column).value, value = header.cell(row = row, column = column).value)
                xml += '/>\n'
            xml += '\t\t</Header>\n'
            
            xml += '\t\t<Data>\n'
            for row in range(2, sheet.max_row + 1):
                xml += '\t\t\t<Param '
                for column in range(1, sheet.max_column + 1):
                    xml += '{key}="{value}" '.format(key = sheet.cell(row = 1, column = column).value, value = sheet.cell(row = row, column = column).value)
                xml += '/>\n'
            xml += '\t\t</Data>\n'
            xml += '\t</Sheet>\n'
    xml += '</Book>'
    file = open(sys.argv[2], mode = 'w', encoding='utf8')
    file.write(xml)
    file.close()

if __name__ == "__main__":
    main()