puts "Clearing old data..."
Message.destroy_all
Project.destroy_all
Skill.destroy_all
Tag.destroy_all

puts "Seeding Projects..."

# create projects
photo = Project.create(
    name: "Megan E. McCarty Photography",
    text: "A personal project for my photography portfolio",
    image: "https://lh3.googleusercontent.com/Ki5fPt6YKPRcxFMF904tYpWaf5VUsE10QJkpNAssBM7yAfJSByAJj33xz9XcPa10PXHI-XOwJLPmIRPQxBSZRJaKYUO0xXPCdoIZ9LCMLxHMQZ6bqfJnytWrAV8_rnMg57xL8JAu3XUn_7MTujFDuIcPe4aEDEqrP_27TVmbR1jq-mznWHtuwgFTCXz0izFoKASnZLadBVCUjYeVb14WK0nPI8YslAudNnmCxMWmBceA1Mg6--hHgmDiPBkff5PYACAJZM17AYbevQ2qgpaZBmzUY79QxqcLlSDS0vzgnafEUKDMd9DrfjWJ2hXfMttZM2rmBBacEQ92MepUnMrWkHqYPEC21f5RY-gs3KXN0M_WrJLUi_P8lIvlO_UYje_9D6m-BfLg1pcKqx-n7s46sKQ_rRA6CHZPKIOFcW6oJuXm6A7MK6DvJwxFekZbJiqQlP9w4_fJU5D_F1WtlUgn5NFTzPnccOV504yvSxkMO9IxzaCEUogNlv05eOspYF4NvrJ9EfC9j-eEqMdoTaokbBY0XoRBaKYj9ZIZbR86gy65n0NkVCByQEsMJPLXJm8oHO6Lsz9oiO69H9d6ts1tQy0Dd9LqIELfFIAeRfcXcALuBPgo-eSZvNzFoEDw5n1OXE9HmPH5CNM_KLVtbwkvYYZRUS3tNdZtPzk_zEqBp17oe1IuplTuhCS-5n0RVCSQD_XtAint-JJL6vwwI3MuDf4=w2554-h1258-no?authuser=0",
    url: "https://www.meganmccartyphotography.com",
    likes: 0
)
zen = Project.create(
    name: "Studio413",
    text: "A creative art blog where the artist can notify subscribers of new posts via email",
    image: "https://lh3.googleusercontent.com/5SY6YvTbKtk46Rjx1Yeof5AJvURg8AdmReu45xJHF7NO1qCoHTeStcnNtUoGkRTQiPZKytQgDbNYr41iFNXdpXy8Hsi8NYXnnRESvHfhT3ZpRbdcjekNMN8mxV8110KjxFel9ANZNs_qaiv7HUU0qg2UWOlvolqxGddtsYZ7Ox0SSuPZInwV9Rdg9yAsxPDvkv24xVckODVKNlVN2YErQsA734ItNwVum0S7eJb5GnGzi2axZ95iHDvJDfYngAiAW2O_EAAzrY7KRY31wguPa2tVQd9qspwOdWIIv8Rzbb4WHzJ_NVnGFE6EiSYFpT3Y0UQvTYIvZ7PO83gqG7wym8HXWlYikc33QX383HgvkcVjBx8WYB99kMnwDmzvwREE3eSCWmhlF3rKkTV83ojsjUsM_NIumbfCE3zH4_CSAjGnLnUQQu4itG-NQUDYlumpx4Ph90nFgF_ejaR8iMcfKqhtog6gbN_Ohi8fvEFp_AiCLpWCQ4MGdHIDXOZ4BlyJszkqoh2HBpKlnRfz01P4oDlQsB6y4bQv9sl3gGnTTFiLKMrbH1FdhKOclm9pd31MNpRbwHrl8RSxjVkoqTfeiQF3SLsfbTfeSWZpthTcGBF4_gueKj7e5VKi0eFt21fIJ-lvjbDV3RUQgbzcQh1IiQ4C36Vk2br3r91cJMJqV1JbZ5FxNJ4Z_kUc4EWiMbPJfm-ML_S8wefeq7s9fnEeTZQ=w2558-h1255-no?authuser=0",
    url: "https://www.zenstudio413.com",
    likes: 0
)
dave = Project.create(
    name: "Dr. David Adamski",
    text: "A website for a Smithsonian researcher showcasing their scientific accomplishments",
    image: "https://lh3.googleusercontent.com/fbIku6q_F88s8AF1f3mctbCSkoJXakNUqjKtrOLB-KZJuaIAZ2bl6TXKqhJPyjlQd9IsruKtfd7SVRTKpFaSxAkt9z9s9g2XLicrEymPuMskuEqJsGQzbWXCFmBT4pX_9j0Go5tIQKQ8Wt4K8XdTtytXpKYpVgSKTZ_cCidkrNNj8tYcaYnIvCCLsVReH6KQDf58vGKeBCbilLpo9GeZqPKe5CSv_5eLfQe2PgyNZ1fP_TRAEUDMWO0h-Le5lJo7nt2WZpacIdF75cR7-KCSANgZZ0434uavkFEoHISzfmLZ-jn75nt96MxzebSmn71wGZUXARuD_ywRlq9Gp-nlr9MJ7mEYwH75OebNdEKV2b_a2vYrLoFxGFvn8m3CCugdIKMTK2ub5k4BMrfmQwyjFCfFiaKLyBAqT9X4ytqTSYg9V_53UqoareoNn8B30bCqERTpl5sn4l_XPbIVGdGUI0tPvvs38qgTsr_T1HB7JE7ctoCJBg8e3KmC10Bohmq-tCnuxKvAT9zw-9K7YOCTnEP0St9ajIpf1FdwhG2cblbt-rnPAr9M0hJW444qG2lc9VLyN447AZmHB45mRwkl1MakAgp2emJcaI1ZaZF3IM1-QYlRJv6MLU2NhXn91fOGvDBzMedil3IvrVp_rZz8eqYl_5zlTenimSus-VrvokjdtmLVLa7ASrRe2aGlQhjXtpuXb4eJv519C7Omqy6vA-Y=w2554-h1244-no?authuser=0",
    url: "https://davidadamski.pythonanywhere.com",
    likes: 0
)
bf = Project.create(
    name: "Butterfly Finder",
    text: "Search for recently seen butterflies by US state (and optionally search by species)",
    image: "https://lh3.googleusercontent.com/ro_zU8dYwEmX1JfThuX_ZeMLoStwcHXK3OPQqJwyvOTToNaZ7RtDBESOtDjkui7xqnHrhI9iehhahKC3Zo_8bLRdT5S9IDGhpxCQ0nURuh-ci86t4HWzpY35zNECabRhuOS_x0mtHpiSBE_QWSg-v80Je8Cr7jlHrXfbZ1EjZoxSMV0MSo4Yt5oPUf4wZ5gp2KFgNHImf0aYwU4SV2Luj3RutVqeuhmHhOTOnJ70eIxApt85Uzxsn2QZWHGNrFteoxrddjpoo79DY1SmXqmqpmSn4fq2whHndKLA6whwbMgEnE0tudRyppqsc5Z-2-VQAchwk7eZTNwYMwDoWmT97Ug3-cFHuxiyPYHAmdUSaexBe9nEoAf2HvZTomFx6xJr2stx-HjCEiqorOoYllxPGJK2gSjUKjtNpBHOHSa-XzgHsQ15Uyrw-wfJU7vKnDBYlbNQD55WU56Wj7gwSUxQT_tvEmRrk9ANpJn_UVZlryqnvMo8a_PvAS58XQyn40plzJREzEdEOF4_8We5gRV0dR3O4yMg60ZRBTVcXZAyYB3LMgTY7yno5mqHin3Krmdj8ubxCkkm7yW_kxJX8zYhWO92qQHM2_7-8-n-yO7UFF5C9kHf8IaW2G5WRzXPyXzQy_tb2A31_6sf6x_PgVJE2-_OrVR-Ob9hUlEmUFqUDwtJI36L4VTFsGOuz5uUal2MABFg1h3DmJNSTrFgi5v2h_U=w2556-h1242-no?authuser=0",
    url: "https://meganmccarty.github.io/butterfly-finder",
    likes: 0
)
flex = Project.create(
    name: "Flexbox Playground",
    text: "Test out different flexbox styles, see the results live, and copy/paste the output into your own project!",
    image: "https://lh3.googleusercontent.com/3lzZXANAkwv7_QuZCiRuJ9wY_gCpc2lMkL4wEUMzwEtzzGcFDrTRXto-CauYy75woqheAQm2ym_OYKOkieVN2QYWvIZJasvIYjUE6H2v3L5sNDon9kU9qI7NbAs_T-dYmDI9O0IxyG-1JPMv915kDUuXRgDqIZ3CLaRAARbvZENrhWboHivTlAYhrTuO7G5SbS9FA_WzBwLvj-7pYNTXflf1pCR1NmqRW58wt-N0rwOVV7h5z80rOHjvx6aP-jqVWpKo0dVd3lgl4pSZYv6w5EGpdqrD3yBFfQvqGPBkq0-xl5a5Uf7RrZjPGD-LSZLVPkOnz29tGqeMn5XpfTqOoHxHk-kXgNiBGmppuUn0rPdU8avGpWhL2kppFu4CUnBr2lQCnELOyy6PFWRURRcX-U7mO9f3lzCu3bYkeqlWOlrTga7kX4F3i8Ws0EjVIIFyEkjvoGInYXJDaOaW-lPJ3FrMrfHcyRiPRNidV88Lkrz3ngyWK1Cb1yvz5yWynb8jIZukmWyo45bbcxe9ye2tfoPxKqmK7--PUoUgFR-O72hhSr07REIm7155n64EsbrK1FU8j9_JdPZ9DfeHPQgm3lZjVs1IGWRiGYHQGEr1dUoWSljl0bwdyX6IdLzsLCT9k52E4IVbv9AoY3yiaHECAp9vBaEpSsk58MeH5bZC3RDXd9l1VhYVkiMLMUNA3yBe4AzoICqgN5RyggoQvl-_W-M=w2560-h1066-no?authuser=0",
    url: "https://meganmccarty.github.io/flexbox-playground",
    likes: 0
)

puts "Seeding Tags..."

# create tags
django_rest = Tag.create(name: "Django REST Framework")
django = Tag.create(name: "Django")
wag = Tag.create(name: "Wagtail CMS")
html = Tag.create(name: "HTML")
css = Tag.create(name: "CSS")
js = Tag.create(name: "JavaScript")
react = Tag.create(name: "React JS")

photo.tags.push(django_rest, react, html, css)
zen.tags.push(django, wag, html, css)
dave.tags.push(django, html, css)
bf.tags.push(js, html, css)
flex.tags.push(js, html, css)

puts "Seeding Skills"

# create skills
Skill.create(name: "Git")
Skill.create(name: "Python")
Skill.create(name: "Django")
Skill.create(name: "Ruby")
Skill.create(name: "Rack")
Skill.create(name: "SQLite")
Skill.create(name: "PostgreSQL")
Skill.create(name: "JavaScript")
Skill.create(name: "React JS")
Skill.create(name: "HTML")
Skill.create(name: "CSS")
Skill.create(name: "Bootstrap")

puts "Done!"