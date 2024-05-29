from robot.libraries.BuiltIn import BuiltIn


def print_console():
    print("Hello Kalyah")


def print_title():
    seleniumLib = BuiltIn().get_library_instance('SeleniumLibrary')
    title = seleniumLib.get_title()
    print(title)


def select_month(xpath, month, date):
    seleniumLib = BuiltIn().get_library_instance('SeleniumLibrary')
    while (selenuimLib.find_element(xpath).text != month):
        seleniumLib.find_element('//*[@id="iu-datepicker-div"]/div/a/[1]/span').click()
    dateStr = f"//a[text() = {date}]"
    seleniumLib.find_element(dateStr).click()
