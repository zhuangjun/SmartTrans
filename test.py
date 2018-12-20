import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

vote_author_list=["Wendy母子","拾荒的蜘蛛侠","比特斯卡","南宫远","币虎榜",
                  "妃子笑","庖丁解币","吴庆英","玩火的猴子","丫头",
                  "白特幂","金马","陈天宇",
                  "小丹"]

driver = webdriver.Chrome()

def login(driver):
    driver.get('https://www.bihu.com/login')

    WebDriverWait(driver, 10).until(EC.presence_of_all_elements_located)

    ele_username = driver.find_element_by_name("loginName")
    ele_password = driver.find_element_by_name("password")
    ele_login_btn = driver.find_element_by_class_name("LoaderButton")

    ele_username.send_keys("13916603015")
    ele_password.send_keys("03158566bc")

    ele_login_btn.click()


def vote(driver):

    driver.get('https://bihu.com/follow')

    WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.CLASS_NAME, "item-bottom")))

    ele_items_parent = driver.find_element(By.CLASS_NAME, "alt-list")
    ele_items = ele_items_parent.find_elements(By.TAG_NAME, "li")

    for ele_item in ele_items:
        type = ele_item.get_attribute("id")
        author = ele_item.find_element(By.CLASS_NAME, "user-info").find_elements(By.TAG_NAME, "p")[0].text
        isArticle = type == "ArticleItem"

        ele_btn_vote = ele_item   \
            .find_element(By.CLASS_NAME, "item-bottom") \
            .find_elements(By.TAG_NAME, "button")[1]

        has_voted = ele_btn_vote.find_element(By.TAG_NAME, "span").get_attribute("class") == "active"

        # print({"type":type,"author":author,"has_voted":has_voted,"in_vote_list": author in vote_author_list})

        # has voted
        if has_voted:
            continue

        # WeiWen not voted
        if not isArticle:
            ele_btn_vote.click()
            continue

        # Article not voted, but not in vote_author_list
        if author not in vote_author_list:
            continue

        ele_btn_vote.click()
        time.sleep(1)

        # switch to article window
        windows = driver.window_handles
        window_home = driver.current_window_handle
        window_article = driver.window_handles[len(windows) - 1]
        driver.switch_to.window(window_article)

        # wait for article page all loaded
        WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.CLASS_NAME, "article-details-center2")))

        # vote article
        ele_article_bottom = driver.find_element(By.CLASS_NAME, "article-details-center2")
        ele_article_buttons = ele_article_bottom.find_elements(By.TAG_NAME, "button")
        ele_vote = ele_article_buttons[1]
        ele_vote.click()
        time.sleep(2)

        # close article window and switch to home
        driver.close()
        driver.switch_to.window(window_home)


login(driver)
time.sleep(2)

exception_count=0;
exception_max=10;

while True:
    try:
        vote(driver)
    except Exception as e:
        exception_count +=1
        print("Exception happened:", e)

    if exception_count >= exception_max:
        print("Reach max exception times, exit.")
        break

    time.sleep(3)

