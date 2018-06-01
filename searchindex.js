// search index for WYSIWYG Web Builder
var database_length = 0;

function SearchPage(url, title, keywords, description)
{
   this.url = url;
   this.title = title;
   this.keywords = keywords;
   this.description = description;
   return this;
}

function SearchDatabase()
{
   database_length = 0;
   this[database_length++] = new SearchPage("登进去了.html", "假的BILILBILI", "假的bililbili menu nbsp mad mmd amp 人生苦短，想一直懒 请问有谁有公司缺人继承吗？ 最近真的头秃。。。。 我们还是优秀的共青团员 不应该这么累 我想要乌黑浓密的头发 我想要不虚的肾和不疼的肝 有无儿无女的富豪缺孩子吗？ 我可以萝莉音 可以御姐音 可以正太音 可以雷佳音 神游物外 friday june 优秀，优秀，优秀。 社会，社会，社会。 渴望头发 治肾亏，不含糖，三百年，九芝堂 哲学 我是谁，我在哪，我要干什么 bilibili ", "");
   return this;
}
