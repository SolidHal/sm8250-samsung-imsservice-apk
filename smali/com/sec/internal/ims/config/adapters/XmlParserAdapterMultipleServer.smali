.class public Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;
.super Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;
.source "XmlParserAdapterMultipleServer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final ATTR_VALUE_ACCESS_CONTROL_APPID:Ljava/lang/String;

.field private final ATTR_VALUE_APPID:Ljava/lang/String;

.field private final ATTR_VALUE_APPLICATION:Ljava/lang/String;

.field protected isParsingApplicationCharacterisitic:Z

.field protected position:I

.field protected tempMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 57
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;-><init>()V

    .line 50
    const-string v0, "appid"

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->ATTR_VALUE_APPID:Ljava/lang/String;

    .line 51
    const-string v0, "application"

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->ATTR_VALUE_APPLICATION:Ljava/lang/String;

    .line 52
    const-string v0, "app-id"

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->ATTR_VALUE_ACCESS_CONTROL_APPID:Ljava/lang/String;

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->tempMap:Ljava/util/Map;

    .line 54
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->isParsingApplicationCharacterisitic:Z

    .line 55
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->position:I

    .line 58
    sget-object v2, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Init XmlParserAdapterMultipleServer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v2, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->LIST_TAG_NAME:Ljava/util/Map;

    const-string/jumbo v3, "server"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v2, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->LIST_TAG_NAME:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->LIST_TAG_NAME:Ljava/util/Map;

    const-string v2, "node"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method


# virtual methods
.method public getCharacteristicListTagCount(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)I
    .locals 2
    .param p3, "attrValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 66
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listTagCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;->getCharacteristicListTagCount(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, "count":I
    const-string v1, "application"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iput v0, p0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->position:I

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->isParsingApplicationCharacterisitic:Z

    .line 71
    :cond_0
    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->tempMap:Ljava/util/Map;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->isParsingApplicationCharacterisitic:Z

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->position:I

    .line 120
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public parseEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "unknownTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listTagCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;->parseEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 112
    const-string v0, "app-id"

    invoke-interface {p4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public parseParamTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listTagCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p5, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v4}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->isParamTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 78
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "appid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    .line 79
    iput-boolean v5, v0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->isParsingApplicationCharacterisitic:Z

    .line 80
    sget-object v6, Lcom/sec/internal/constants/ims/config/ConfigConstants;->APPID_MAP:Ljava/util/Map;

    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 81
    .local v6, "count":Ljava/lang/String;
    sget-object v8, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->position:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " appid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "replacement: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "application"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 83
    .local v8, "temp":Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .line 84
    .local v9, "index":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 85
    .local v11, "p":Ljava/lang/String;
    const-string v12, "application/([0-9])"

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 86
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 87
    goto :goto_1

    .line 89
    :cond_0
    nop

    .end local v11    # "p":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    :goto_1
    iget-object v10, v0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->tempMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 92
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 93
    .local v12, "key":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "application/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->position:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 94
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->position:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 96
    :cond_2
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v3, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "key":Ljava/lang/String;
    goto :goto_2

    .line 98
    :cond_3
    iget-object v10, v0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->tempMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 100
    .end local v6    # "count":Ljava/lang/String;
    .end local v8    # "temp":Ljava/lang/StringBuffer;
    .end local v9    # "index":I
    :cond_4
    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p3

    invoke-virtual {v0, v2, v6, v5}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->parseParamListTag(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "pathFull":Ljava/lang/String;
    iget-boolean v8, v0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->isParsingApplicationCharacterisitic:Z

    if-nez v8, :cond_5

    .line 102
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 104
    :cond_5
    iget-object v8, v0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->tempMap:Ljava/util/Map;

    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 77
    .end local v5    # "pathFull":Ljava/lang/String;
    :cond_6
    move-object/from16 v6, p3

    .line 107
    :goto_3
    return-void
.end method
