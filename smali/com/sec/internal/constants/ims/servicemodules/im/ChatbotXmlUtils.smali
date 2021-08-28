.class public Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;
.super Ljava/lang/Object;
.source "ChatbotXmlUtils.java"


# static fields
.field private static sInstance:Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;


# instance fields
.field private mCommandIdPath:Ljavax/xml/xpath/XPathExpression;

.field private mDocumentBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field private mXpath:Ljavax/xml/xpath/XPath;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    .locals 2
    .param p1, "xpath"    # Ljava/lang/String;

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->mXpath:Ljavax/xml/xpath/XPath;

    invoke-interface {v0, p1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2
    .param p0, "expressionLazy"    # Ljavax/xml/xpath/XPathExpression;
    .param p1, "context"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 123
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 125
    .local v0, "node":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 129
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;
    .locals 2

    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->sInstance:Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;-><init>()V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->sInstance:Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;

    .line 30
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->sInstance:Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public composeAnonymizeXml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "commandId"    # Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, "<AM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, " xmlns=\"urn:gsma:params:xml:ns:rcs:rcs:aliasmgmt\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "\t<Command-ID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "</Command-ID>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, "\t<action>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "</action>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "</AM>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public composeSpamXml(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "spamType"    # Ljava/lang/String;
    .param p4, "freeText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 58
    .local p2, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "\t<SR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, " xmlns=\"urn:gsma:params:xml:ns:rcs:rcs:spamreport\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "\t\t<Chatbot>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, "</Chatbot>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "count":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    .local v3, "messageId":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 70
    const/16 v4, 0xa

    if-lt v1, v4, :cond_0

    .line 71
    goto :goto_1

    .line 73
    :cond_0
    const-string v4, "\t\t<Message-ID>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v4, "</Message-ID>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 78
    .end local v3    # "messageId":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 79
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 80
    const-string v2, "\t\t<spam-type>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v2, "</spam-type>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_3
    if-eqz p4, :cond_4

    .line 85
    const-string v2, "&"

    const-string v3, "&amp;"

    invoke-virtual {p4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    const-string v4, "&gt;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 86
    const-string v3, "<"

    const-string v4, "&lt;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, "&quot;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 87
    const-string v3, "\'"

    const-string v4, "&apos;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "escapedFreeText":Ljava/lang/String;
    const-string v3, "\t\t<free-text>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v3, "</free-text>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .end local v2    # "escapedFreeText":Ljava/lang/String;
    :cond_4
    const-string v2, "</SR>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public parseXml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "resultXml"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 98
    .local v0, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    .line 99
    .local v1, "xPathFactory":Ljavax/xml/xpath/XPathFactory;
    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->mXpath:Ljavax/xml/xpath/XPath;

    .line 101
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->mDocumentBuilder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 105
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->mCommandIdPath:Ljavax/xml/xpath/XPathExpression;

    .line 106
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 107
    .local v2, "inputStream":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->mDocumentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v3, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 108
    .local v3, "document":Lorg/w3c/dom/Document;
    iget-object v4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->mCommandIdPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v4, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
