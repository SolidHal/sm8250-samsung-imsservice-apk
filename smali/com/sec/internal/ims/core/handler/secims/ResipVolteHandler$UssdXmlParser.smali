.class public Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;
.super Ljava/lang/Object;
.source "ResipVolteHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UssdXmlParser"
.end annotation


# static fields
.field private static sInstance:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;


# instance fields
.field mXPath:Ljavax/xml/xpath/XPath;

.field mXPathErrorCode:Ljavax/xml/xpath/XPathExpression;

.field mXPathNiNotify:Ljavax/xml/xpath/XPathExpression;

.field mXPathNiRequest:Ljavax/xml/xpath/XPathExpression;

.field mXPathUssdData:Ljavax/xml/xpath/XPathExpression;

.field mXPathUssdString:Ljavax/xml/xpath/XPathExpression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 287
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->sInstance:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->init()V

    .line 299
    return-void
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 282
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->parseUssdXml(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;
    .locals 1

    .line 290
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->sInstance:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->sInstance:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;

    .line 294
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->sInstance:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;

    return-object v0
.end method

.method private init()V
    .locals 3

    .line 302
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    .line 305
    :try_start_0
    const-string v1, "/ussd-data"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathUssdData:Ljavax/xml/xpath/XPathExpression;

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string/jumbo v1, "ussd-string"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathUssdString:Ljavax/xml/xpath/XPathExpression;

    .line 307
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "error-code"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathErrorCode:Ljavax/xml/xpath/XPathExpression;

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "boolean(anyExt/UnstructuredSS-Request)"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathNiRequest:Ljavax/xml/xpath/XPathExpression;

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "boolean(anyExt/UnstructuredSS-Notify)"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathNiNotify:Ljavax/xml/xpath/XPathExpression;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    const-string v1, "ResipVolteHandler"

    const-string v2, "XPath compile failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .end local v0    # "e":Ljavax/xml/xpath/XPathExpressionException;
    :goto_0
    return-void
.end method

.method private parseUssdXml(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;
    .locals 8
    .param p1, "ussdXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 317
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$1;)V

    .line 319
    .local v0, "ret":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;
    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const-string v1, "(?i)&(?!(#x?[\\d\\w]+;)|(quot;)|(lt;)|(gt;)|(apos;)|(amp;))"

    const-string v2, "&amp;"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 322
    :cond_0
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 324
    .local v1, "xmlSource":Lorg/xml/sax/InputSource;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathUssdData:Ljavax/xml/xpath/XPathExpression;

    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v2, v1, v3}, Ljavax/xml/xpath/XPathExpression;->evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 326
    .local v2, "ussdDataNode":Lorg/w3c/dom/Node;
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathErrorCode:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v3, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "tmpErrorCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathUssdString:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v4, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "tmpUssdStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error-code"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mString:Ljava/lang/String;

    .line 331
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->hasErrorCode:Z

    goto :goto_0

    .line 333
    :cond_1
    iput-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mString:Ljava/lang/String;

    .line 335
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathNiRequest:Ljavax/xml/xpath/XPathExpression;

    sget-object v6, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-interface {v5, v2, v6}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 337
    .local v5, "isNiRequest":Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathNiNotify:Ljavax/xml/xpath/XPathExpression;

    sget-object v7, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-interface {v6, v2, v7}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 340
    .local v6, "isNiNotify":Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 341
    sget-object v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->NET_INIT_REQUEST:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    iput-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mType:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    goto :goto_1

    .line 342
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 343
    sget-object v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->NET_INIT_NOTIFY:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    iput-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mType:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    goto :goto_1

    .line 345
    :cond_3
    sget-object v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->RESPONSE_TO_USER_INIT:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    iput-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mType:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    .line 348
    :goto_1
    return-object v0
.end method
