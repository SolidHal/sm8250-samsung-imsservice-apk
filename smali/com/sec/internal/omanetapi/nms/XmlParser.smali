.class public Lcom/sec/internal/omanetapi/nms/XmlParser;
.super Ljava/lang/Object;
.source "XmlParser.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final TAG_GROUP_STATE:Ljava/lang/String; = "groupstate"

.field public static final TAG_GROUP_STATE_ATTR_CONTRIBUTIONID:Ljava/lang/String; = "contributionid"

.field public static final TAG_GROUP_STATE_ATTR_GROUP_TYPE:Ljava/lang/String; = "group-type"

.field public static final TAG_GROUP_STATE_ATTR_LASTFOCUSSESSIONID:Ljava/lang/String; = "lastfocussessionid"

.field public static final TAG_GROUP_STATE_ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TAG_PARTICIPANT:Ljava/lang/String; = "participant"

.field public static final TAG_PARTICIPANT_ATTR_COMMADDR:Ljava/lang/String; = "comm-addr"

.field public static final TAG_PARTICIPANT_ATTR_NAME:Ljava/lang/String; = "name"

.field public static final TAG_PARTICIPANT_ATTR_ROLE:Ljava/lang/String; = "role"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/sec/internal/omanetapi/nms/XmlParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/XmlParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseGroupState(Ljava/lang/String;)Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .locals 14
    .param p0, "xml"    # Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/GroupState;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/GroupState;-><init>()V

    .line 32
    .local v0, "rt":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 33
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 34
    .local v2, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 35
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 36
    .local v3, "eventType":I
    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_f

    .line 37
    if-nez v3, :cond_0

    .line 38
    sget-object v4, Lcom/sec/internal/omanetapi/nms/XmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Start document"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 39
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    .line 40
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "tagName":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/omanetapi/nms/XmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start tagName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    .line 43
    .local v5, "attrCount":I
    const-string v6, "groupstate"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "Unknown attrName:"

    if-eqz v6, :cond_6

    .line 44
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_5

    .line 45
    :try_start_1
    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 46
    .local v8, "attrName":Ljava/lang/String;
    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "attrValue":Ljava/lang/String;
    const-string/jumbo v10, "timestamp"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 48
    iput-object v9, v0, Lcom/sec/internal/omanetapi/nms/data/GroupState;->timestamp:Ljava/lang/String;

    goto :goto_2

    .line 49
    :cond_1
    const-string v10, "lastfocussessionid"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 50
    iput-object v9, v0, Lcom/sec/internal/omanetapi/nms/data/GroupState;->lastfocussessionid:Ljava/lang/String;

    goto :goto_2

    .line 51
    :cond_2
    const-string v10, "group-type"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 52
    iput-object v9, v0, Lcom/sec/internal/omanetapi/nms/data/GroupState;->group_type:Ljava/lang/String;

    goto :goto_2

    .line 53
    :cond_3
    const-string v10, "contributionid"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 54
    iput-object v9, v0, Lcom/sec/internal/omanetapi/nms/data/GroupState;->contributionid:Ljava/lang/String;

    goto :goto_2

    .line 56
    :cond_4
    sget-object v10, Lcom/sec/internal/omanetapi/nms/XmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v8    # "attrName":Ljava/lang/String;
    .end local v9    # "attrValue":Ljava/lang/String;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v6    # "i":I
    :cond_5
    goto/16 :goto_5

    .line 60
    :cond_6
    const-string/jumbo v6, "participant"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 61
    new-instance v6, Lcom/sec/internal/omanetapi/nms/data/Part;

    invoke-direct {v6}, Lcom/sec/internal/omanetapi/nms/data/Part;-><init>()V

    .line 62
    .local v6, "pt":Lcom/sec/internal/omanetapi/nms/data/Part;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v5, :cond_a

    .line 63
    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, "attrName":Ljava/lang/String;
    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, "attrValue":Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "attrname>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ";attrValue>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    const-string v11, "name"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 67
    iput-object v10, v6, Lcom/sec/internal/omanetapi/nms/data/Part;->name:Ljava/lang/String;

    goto :goto_4

    .line 68
    :cond_7
    const-string v11, "comm-addr"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 69
    iput-object v10, v6, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    goto :goto_4

    .line 70
    :cond_8
    const-string/jumbo v11, "role"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 71
    iput-object v10, v6, Lcom/sec/internal/omanetapi/nms/data/Part;->role:Ljava/lang/String;

    goto :goto_4

    .line 73
    :cond_9
    sget-object v11, Lcom/sec/internal/omanetapi/nms/XmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v9    # "attrName":Ljava/lang/String;
    .end local v10    # "attrValue":Ljava/lang/String;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 76
    .end local v8    # "i":I
    :cond_a
    iget-object v7, v0, Lcom/sec/internal/omanetapi/nms/data/GroupState;->participantList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    nop

    .end local v6    # "pt":Lcom/sec/internal/omanetapi/nms/data/Part;
    goto :goto_5

    .line 78
    :cond_b
    sget-object v6, Lcom/sec/internal/omanetapi/nms/XmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown tagName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v4    # "tagName":Ljava/lang/String;
    .end local v5    # "attrCount":I
    :goto_5
    goto :goto_6

    :cond_c
    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    .line 81
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .restart local v4    # "tagName":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/omanetapi/nms/XmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "end tagName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    nop

    .end local v4    # "tagName":Ljava/lang/String;
    goto :goto_6

    :cond_d
    const/4 v4, 0x4

    if-ne v3, v4, :cond_e

    .line 84
    sget-object v4, Lcom/sec/internal/omanetapi/nms/XmlParser;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "unhandled element"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_e
    :goto_6
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v4

    goto/16 :goto_0

    .line 94
    .end local v2    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "eventType":I
    :cond_f
    goto :goto_7

    .line 91
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 88
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 90
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 94
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 95
    :goto_7
    return-object v0
.end method
