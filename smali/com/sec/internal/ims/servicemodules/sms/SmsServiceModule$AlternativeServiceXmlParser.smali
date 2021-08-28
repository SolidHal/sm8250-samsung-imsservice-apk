.class public Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeServiceXmlParser;
.super Ljava/lang/Object;
.source "SmsServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlternativeServiceXmlParser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseXml(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;
    .locals 14
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 235
    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;-><init>()V

    .line 236
    .local v0, "svc":Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlternativeServiceXmlParser parseXml:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    .line 238
    .local v1, "xPath":Ljavax/xml/xpath/XPath;
    const-string v2, "/ims-3gpp/alternative-service"

    invoke-interface {v1, v2}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    .line 239
    .local v2, "expAlternativeService":Ljavax/xml/xpath/XPathExpression;
    const-string/jumbo v3, "type"

    invoke-interface {v1, v3}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v3

    .line 240
    .local v3, "expType":Ljavax/xml/xpath/XPathExpression;
    const-string/jumbo v4, "reason"

    invoke-interface {v1, v4}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v4

    .line 241
    .local v4, "expReason":Ljavax/xml/xpath/XPathExpression;
    const-string v5, "action"

    invoke-interface {v1, v5}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v5

    .line 243
    .local v5, "expAction":Ljavax/xml/xpath/XPathExpression;
    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 244
    .local v6, "xmlSource":Lorg/xml/sax/InputSource;
    sget-object v7, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v2, v6, v7}, Ljavax/xml/xpath/XPathExpression;->evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Node;

    .line 245
    .local v7, "NodeAs":Lorg/w3c/dom/Node;
    if-nez v7, :cond_0

    .line 247
    return-object v0

    .line 249
    :cond_0
    invoke-interface {v3, v7}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "strType":Ljava/lang/String;
    invoke-interface {v4, v7}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 251
    .local v9, "strReason":Ljava/lang/String;
    invoke-interface {v5, v7}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 253
    .local v10, "strAction":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 254
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 255
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 257
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parseXml:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput-object v8, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;->mType:Ljava/lang/String;

    .line 261
    iput-object v10, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;->mAction:Ljava/lang/String;

    .line 263
    return-object v0
.end method
