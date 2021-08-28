.class public Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;
.super Ljava/lang/Object;
.source "FtHttpXmlParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final ns:Ljava/lang/String;


# instance fields
.field private mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

.field private mFtHttpResumeInfo:Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->LOG_TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;-><init>()V

    .line 35
    .local v0, "parser":Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;
    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->parseFromString(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    move-result-object v1

    return-object v1
.end method

.method private parseFromString(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    :try_start_0
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    .line 48
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 49
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 50
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 51
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 52
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFile(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 54
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    nop

    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    .line 59
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    return-object v0
.end method

.method public static parseResume(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;-><init>()V

    .line 41
    .local v0, "parser":Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;
    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->parseResumeFromString(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    move-result-object v1

    return-object v1
.end method

.method private parseResumeFromString(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 67
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 68
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 69
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 70
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFileResumeInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpResumeInfo:Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    .line 72
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpResumeInfo:Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpResumeInfo:Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    return-object v1
.end method

.method private readBrandedUrl(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "e:branded-url"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "brandedUrl":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 194
    return-object v0
.end method

.method private readContentType(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "content-type"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "contentType":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    return-object v0
.end method

.method private readData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "data"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, ""

    .line 176
    .local v0, "url":Ljava/lang/String;
    const-string v1, ""

    .line 177
    .local v1, "until":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    const/4 v4, 0x0

    const-string/jumbo v5, "url"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string/jumbo v5, "until"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 184
    :cond_0
    const/4 v4, 0x3

    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    invoke-interface {p1, v4, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v2
.end method

.method private readFile(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 82
    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "name":Ljava/lang/String;
    const-string v3, "file-info"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const-string/jumbo v4, "type"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "type":Ljava/lang/String;
    const-string/jumbo v4, "thumbnail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readThumbnailInfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFileInfo(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 93
    .end local v3    # "type":Ljava/lang/String;
    :cond_2
    :goto_1
    goto :goto_2

    .line 94
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 96
    .end local v0    # "name":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 97
    :cond_4
    return-void
.end method

.method private readFileInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file-info"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const-string v3, "file-disposition"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "disposition":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-virtual {v3, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setFileDisposition(Ljava/lang/String;)V

    .line 125
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    .line 126
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 127
    goto :goto_0

    .line 129
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "name":Ljava/lang/String;
    const-string v4, "file-size"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFileSize(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setFileSize(J)V

    goto :goto_1

    .line 132
    :cond_1
    const-string v4, "file-name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFileName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setFileName(Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_2
    const-string v4, "content-type"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 135
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readContentType(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setContentType(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_3
    const-string v4, "data"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 137
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)V

    goto :goto_1

    .line 138
    :cond_4
    const-string v4, "e:branded-url"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 139
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readBrandedUrl(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setBrandedUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :cond_5
    const-string v4, "am:playing-length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 141
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readPlayingLength(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setPlayingLength(I)V

    goto :goto_1

    .line 143
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 145
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 146
    :cond_7
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private readFileName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file-name"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "fileName":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    return-object v0
.end method

.method private readFileResumeInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file-resume-info"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    const-wide/16 v3, 0x0

    .line 202
    .local v3, "start":J
    const-wide/16 v5, 0x0

    .line 203
    .local v5, "end":J
    const-string v0, ""

    move-wide v9, v3

    move-wide v11, v5

    .line 204
    .end local v3    # "start":J
    .end local v5    # "end":J
    .local v0, "url":Ljava/lang/String;
    .local v9, "start":J
    .local v11, "end":J
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    .line 205
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 206
    goto :goto_0

    .line 208
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "name":Ljava/lang/String;
    const-string v4, "file-range"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 211
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const-string/jumbo v5, "start"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 213
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 216
    :cond_1
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const-string v6, "end"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 217
    if-eqz v4, :cond_2

    .line 218
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 220
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 221
    .end local v4    # "str":Ljava/lang/String;
    goto :goto_1

    :cond_3
    const-string v4, "data"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 222
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const-string/jumbo v5, "url"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 223
    .restart local v4    # "str":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 224
    move-object v0, v4

    .line 226
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 227
    .end local v4    # "str":Ljava/lang/String;
    goto :goto_1

    .line 228
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 230
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 232
    :cond_6
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    move-wide v4, v9

    move-wide v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;-><init>(JJLjava/net/URL;)V

    return-object v1
.end method

.method private readFileSize(Lorg/xmlpull/v1/XmlPullParser;)J
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file-size"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 152
    .local v0, "fileSize":J
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-interface {p1, v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    return-wide v0
.end method

.method private readPlayingLength(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "am:playing-length"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 250
    .local v0, "playingLength":I
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 251
    return v0
.end method

.method private readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 238
    const-string v0, ""

    .line 239
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 240
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 243
    :cond_0
    return-object v0
.end method

.method private readThumbnailInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file-info"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    .line 103
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 104
    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "name":Ljava/lang/String;
    const-string v2, "file-size"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFileSize(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setThumbnailFileSize(J)V

    goto :goto_1

    .line 109
    :cond_1
    const-string v2, "content-type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readContentType(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setThumbnailContentType(Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_2
    const-string v2, "data"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setThumbnailData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)V

    goto :goto_1

    .line 114
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 116
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 117
    :cond_4
    return-void
.end method

.method private skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 258
    const/4 v0, 0x1

    .line 259
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_2

    .line 260
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 262
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 263
    goto :goto_1

    .line 265
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 266
    :goto_1
    goto :goto_0

    .line 269
    :cond_2
    return-void

    .line 256
    .end local v0    # "depth":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
