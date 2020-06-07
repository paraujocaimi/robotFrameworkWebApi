{
    "$schema": "http://json-schema.org/draft-07/schema",
    "$id": "http://example.com/example.json",
    "type": "object",
    "title": "The root schema",
    "description": "The root schema comprises the entire JSON document.",
    "default": {},
    "examples": [
        {
            "ID": 1,
            "Title": "Book 1",
            "Description": "Lorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\n",
            "PageCount": 100,
            "Excerpt": "Lorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\nLorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\nLorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\nLorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\nLorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\n",
            "PublishDate": "2020-06-06T18:41:52.1661654+00:00"
        }
    ],
    "required": [
        "ID",
        "Title",
        "Description",
        "PageCount",
        "Excerpt",
        "PublishDate"
    ],
    "additionalProperties": true,
    "properties": {
        "ID": {
            "$id": "#/properties/ID",
            "type": "integer",
            "title": "The ID schema",
            "description": "An explanation about the purpose of this instance.",
            "default": 0,
            "examples": [
                1
            ]
        },
        "Title": {
            "$id": "#/properties/Title",
            "type": "string",
            "title": "The Title schema",
            "description": "An explanation about the purpose of this instance.",
            "default": "",
            "examples": [
                "Book 1"
            ]
        },
        "Description": {
            "$id": "#/properties/Description",
            "type": "string",
            "title": "The Description schema",
            "description": "An explanation about the purpose of this instance.",
            "default": "",
            "examples": [
                "Lorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\n"
            ]
        },
        "PageCount": {
            "$id": "#/properties/PageCount",
            "type": "integer",
            "title": "The PageCount schema",
            "description": "An explanation about the purpose of this instance.",
            "default": 0,
            "examples": [
                100
            ]
        },
        "Excerpt": {
            "$id": "#/properties/Excerpt",
            "type": "string",
            "title": "The Excerpt schema",
            "description": "An explanation about the purpose of this instance.",
            "default": "",
            "examples": [
                "Lorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\nLorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\nLorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\nLorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\nLorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\n"
            ]
        },
        "PublishDate": {
            "$id": "#/properties/PublishDate",
            "type": "string",
            "title": "The PublishDate schema",
            "description": "An explanation about the purpose of this instance.",
            "default": "",
            "examples": [
                "2020-06-06T18:41:52.1661654+00:00"
            ]
        }
    }
}