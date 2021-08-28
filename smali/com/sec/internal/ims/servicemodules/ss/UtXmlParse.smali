.class public Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;
.super Ljava/lang/Object;
.source "UtXmlParse.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "UtXmlParse"


# instance fields
.field private mDefaultBehavior:Ljavax/xml/xpath/XPathExpression;

.field private mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

.field private mErrorPath:Ljavax/xml/xpath/XPathExpression;

.field private mReplyTimer:Ljavax/xml/xpath/XPathExpression;

.field private mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

.field private mRootBarringElement:Ljavax/xml/xpath/XPathExpression;

.field private mRulePath:Ljavax/xml/xpath/XPathExpression;

.field private mXpath:Ljavax/xml/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 54
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 59
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    .line 60
    .local v1, "xPathFactory":Ljavax/xml/xpath/XPathFactory;
    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mXpath:Ljavax/xml/xpath/XPath;

    .line 62
    const-string v2, "//*[local-name()=\'NoReplyTimer\']"

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mReplyTimer:Ljavax/xml/xpath/XPathExpression;

    .line 63
    const-string v2, "//@active"

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

    .line 64
    const-string v2, "//*[local-name()=\'rule\']"

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRulePath:Ljavax/xml/xpath/XPathExpression;

    .line 65
    const-string v2, "//*[contains(local-name(), \'barring\')]"

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootBarringElement:Ljavax/xml/xpath/XPathExpression;

    .line 66
    const-string v2, "//*[local-name()=\'constraint-failure\']"

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mErrorPath:Ljavax/xml/xpath/XPathExpression;

    .line 67
    const-string v2, "//*[contains(local-name(), \'default-behaviour\')]"

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDefaultBehavior:Ljavax/xml/xpath/XPathExpression;

    .line 70
    return-void
.end method

.method private combineCbType(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;I)V
    .locals 3
    .param p1, "rules"    # Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .param p2, "cbType"    # I

    .line 189
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    if-nez v0, :cond_1

    .line 190
    const/16 v0, 0x66

    if-ne p2, v0, :cond_0

    .line 191
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    .line 198
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 v1, 0x5

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_0

    .line 199
    :cond_3
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 200
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 v1, 0x3

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_0

    .line 201
    :cond_4
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_5

    .line 202
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_0

    .line 203
    :cond_5
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_6

    goto :goto_0

    .line 205
    :cond_6
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_7

    .line 206
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_0

    .line 207
    :cond_7
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_8

    .line 208
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 210
    :cond_8
    :goto_0
    return-void
.end method

.method private createXPathNode(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    .locals 1
    .param p1, "xpath"    # Ljava/lang/String;

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mXpath:Ljavax/xml/xpath/XPath;

    invoke-interface {v0, p1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 299
    .end local v0    # "e":Ljavax/xml/xpath/XPathExpressionException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static extractBoolean(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Z
    .locals 3
    .param p0, "expression"    # Ljavax/xml/xpath/XPathExpression;
    .param p1, "context"    # Lorg/w3c/dom/Document;

    .line 331
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 332
    .local v1, "result":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 333
    const/4 v0, 0x1

    return v0

    .line 335
    :cond_0
    return v0

    .line 336
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v1}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 339
    .end local v1    # "e":Ljavax/xml/xpath/XPathExpressionException;
    return v0
.end method

.method private extractCbType(Lorg/w3c/dom/Document;)I
    .locals 3
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .line 494
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootBarringElement:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractNodeName(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "extractedNode":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    const-string v2, "incoming-communication-barring"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    const/16 v1, 0x66

    return v1

    .line 501
    :cond_1
    const-string/jumbo v2, "outgoing-communication-barring"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 502
    const/16 v1, 0x68

    return v1

    .line 504
    :cond_2
    return v1

    .line 496
    :cond_3
    :goto_0
    return v1
.end method

.method private static extractInt(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)I
    .locals 3
    .param p0, "expression"    # Ljavax/xml/xpath/XPathExpression;
    .param p1, "context"    # Lorg/w3c/dom/Document;

    .line 344
    :try_start_0
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 347
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 345
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "UtXmlParse"

    const-string v2, "Invalid integer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 349
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 350
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 353
    .end local v0    # "e":Ljavax/xml/xpath/XPathExpressionException;
    :goto_0
    nop

    .line 355
    :goto_1
    const/16 v0, 0x14

    return v0
.end method

.method private static extractNodeList(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;
    .locals 2
    .param p0, "expression"    # Ljavax/xml/xpath/XPathExpression;
    .param p1, "context"    # Lorg/w3c/dom/Document;

    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, "nodeList":Lorg/w3c/dom/NodeList;
    :try_start_0
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/NodeList;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 363
    return-object v0

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v1}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 368
    .end local v1    # "e":Ljavax/xml/xpath/XPathExpressionException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static extractNodeName(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2
    .param p0, "expression"    # Ljavax/xml/xpath/XPathExpression;
    .param p1, "context"    # Lorg/w3c/dom/Document;

    .line 304
    :try_start_0
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 306
    .local v0, "node":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 311
    .end local v0    # "node":Lorg/w3c/dom/Node;
    :cond_0
    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 312
    .end local v0    # "e":Ljavax/xml/xpath/XPathExpressionException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2
    .param p0, "expression"    # Ljavax/xml/xpath/XPathExpression;
    .param p1, "context"    # Lorg/w3c/dom/Document;

    .line 317
    :try_start_0
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 319
    .local v0, "node":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 324
    .end local v0    # "node":Lorg/w3c/dom/Node;
    :cond_0
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 326
    .end local v0    # "e":Ljavax/xml/xpath/XPathExpressionException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getConditionfromName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 431
    const-string v0, "busy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x1

    return v0

    .line 433
    :cond_0
    const-string v0, "no-answer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    const/4 v0, 0x2

    return v0

    .line 435
    :cond_1
    const-string v0, "not-reachable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    const/4 v0, 0x3

    return v0

    .line 437
    :cond_2
    const-string v0, "not-logged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "not-registered"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 439
    :cond_3
    const-string v0, "international-exHC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 440
    const/16 v0, 0xb

    return v0

    .line 441
    :cond_4
    const-string v0, "international"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 442
    const/16 v0, 0xa

    return v0

    .line 443
    :cond_5
    const-string/jumbo v0, "roaming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 444
    const/16 v0, 0xe

    return v0

    .line 445
    :cond_6
    const-string v0, "external-list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 446
    const/16 v0, 0xc

    return v0

    .line 447
    :cond_7
    const-string/jumbo v0, "other-identity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 448
    const/16 v0, 0xd

    return v0

    .line 449
    :cond_8
    const-string v0, "anonymous"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 450
    const/16 v0, 0xf

    return v0

    .line 451
    :cond_9
    const-string v0, "cp:identity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 452
    const/16 v0, 0x10

    return v0

    .line 455
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 438
    :cond_b
    :goto_0
    const/4 v0, 0x6

    return v0
.end method

.method private getConditions(Lorg/w3c/dom/NodeList;)Lcom/sec/internal/ims/servicemodules/ss/Condition;
    .locals 6
    .param p1, "nodes"    # Lorg/w3c/dom/NodeList;

    .line 459
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 460
    .local v0, "size":I
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    .line 461
    .local v1, "condition":Lcom/sec/internal/ims/servicemodules/ss/Condition;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 462
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_4

    .line 463
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 464
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v5, "text"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 465
    goto :goto_1

    .line 467
    :cond_0
    const-string/jumbo v5, "rule-deactivated"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 468
    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 469
    iput v3, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 470
    goto :goto_1

    .line 473
    :cond_1
    const-string v3, "media"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 474
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 475
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->getMediaTypes(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    goto :goto_1

    .line 480
    :cond_2
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->getConditionfromName(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 462
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    .end local v2    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6

    .line 484
    :cond_5
    iput v3, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 487
    :cond_6
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 488
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_7
    return-object v1
.end method

.method private getForwardData(Lorg/w3c/dom/NodeList;)Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;
    .locals 8
    .param p1, "nodes"    # Lorg/w3c/dom/NodeList;

    .line 388
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;-><init>()V

    .line 389
    .local v0, "fwtList":Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 390
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 391
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 392
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 394
    .local v5, "value":Ljava/lang/String;
    const-string v6, "#text"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 395
    goto :goto_3

    .line 397
    :cond_0
    const-string/jumbo v6, "to-target"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "target"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 403
    :cond_1
    iput-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_3

    .line 398
    :cond_2
    :goto_2
    new-instance v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    invoke-direct {v6}, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;-><init>()V

    .line 399
    .local v6, "fwd":Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;
    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->id:Ljava/lang/String;

    .line 400
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->status:Z

    .line 401
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v6    # "fwd":Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;
    nop

    .line 391
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 390
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    .end local v2    # "i":I
    :cond_4
    return-object v0
.end method

.method private getMediaTypes(Lorg/w3c/dom/NodeList;)Ljava/util/List;
    .locals 5
    .param p1, "nodes"    # Lorg/w3c/dom/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/ss/MEDIA;",
            ">;"
        }
    .end annotation

    .line 412
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 413
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/ss/MEDIA;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 416
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 417
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 418
    :cond_0
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 419
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    .end local v2    # "i":I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 424
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_3
    return-object v1
.end method


# virtual methods
.method public parseCallBarring(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .locals 18
    .param p1, "xml"    # Ljava/lang/String;

    .line 90
    move-object/from16 v1, p0

    const-string v0, "id"

    const/4 v2, 0x0

    .line 91
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v3, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 93
    .local v3, "cbData":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v5, "utf-8"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    move-object/from16 v6, p1

    :try_start_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v2, v4

    .line 94
    :try_start_2
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v4, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 95
    .local v4, "document":Lorg/w3c/dom/Document;
    invoke-direct {v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractCbType(Lorg/w3c/dom/Document;)I

    move-result v5

    .line 96
    .local v5, "cbType":I
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v7, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractBoolean(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Z

    move-result v7

    iput-boolean v7, v3, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->active:Z

    .line 97
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRulePath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v7, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractNodeList(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 98
    .local v7, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v7, :cond_c

    .line 99
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_b

    .line 100
    new-instance v9, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-direct {v9}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;-><init>()V

    .line 101
    .local v9, "rules":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    .line 102
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v10, v11, :cond_9

    .line 103
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 104
    .local v11, "child":Lorg/w3c/dom/NodeList;
    invoke-interface {v11, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "conditions"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 105
    invoke-interface {v11, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->getConditions(Lorg/w3c/dom/NodeList;)Lcom/sec/internal/ims/servicemodules/ss/Condition;

    move-result-object v12

    iput-object v12, v9, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 106
    iget-object v12, v9, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v12, v12, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/16 v13, 0x10

    if-ne v12, v13, :cond_4

    .line 107
    invoke-interface {v11, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 108
    .local v12, "child_identity":Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_2
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v13, v14, :cond_3

    .line 109
    invoke-interface {v12, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "cp:identity"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 110
    invoke-interface {v12, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 111
    .local v14, "child_one_id":Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    .local v15, "l":I
    :goto_3
    move-object/from16 v16, v2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v16, "inputStream":Ljava/io/InputStream;
    :try_start_3
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v15, v2, :cond_1

    .line 112
    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v4

    .end local v4    # "document":Lorg/w3c/dom/Document;
    .local v17, "document":Lorg/w3c/dom/Document;
    const-string/jumbo v4, "one"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, v9, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto :goto_3

    .end local v17    # "document":Lorg/w3c/dom/Document;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    :cond_1
    move-object/from16 v17, v4

    .end local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v17    # "document":Lorg/w3c/dom/Document;
    goto :goto_4

    .line 109
    .end local v14    # "child_one_id":Lorg/w3c/dom/NodeList;
    .end local v15    # "l":I
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "document":Lorg/w3c/dom/Document;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .line 108
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v17    # "document":Lorg/w3c/dom/Document;
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto :goto_2

    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "document":Lorg/w3c/dom/Document;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .line 118
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v12    # "child_identity":Lorg/w3c/dom/NodeList;
    .end local v13    # "k":I
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v17    # "document":Lorg/w3c/dom/Document;
    goto/16 :goto_7

    .line 106
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "document":Lorg/w3c/dom/Document;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v17    # "document":Lorg/w3c/dom/Document;
    goto/16 :goto_7

    .line 119
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "document":Lorg/w3c/dom/Document;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v17    # "document":Lorg/w3c/dom/Document;
    invoke-interface {v11, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "actions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 120
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_5
    invoke-interface {v11, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 121
    invoke-interface {v11, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 122
    .local v4, "actionChild":Lorg/w3c/dom/NodeList;
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "allow"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 123
    invoke-interface {v11, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v9, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    goto :goto_6

    .line 125
    :cond_6
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 126
    new-instance v12, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;

    invoke-direct {v12}, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;-><init>()V

    .line 127
    .local v12, "elm":Lcom/sec/internal/ims/servicemodules/ss/ActionElm;
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->name:Ljava/lang/String;

    .line 128
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->value:Ljava/lang/String;

    .line 129
    iget-object v13, v9, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->actions:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v4    # "actionChild":Lorg/w3c/dom/NodeList;
    .end local v12    # "elm":Lcom/sec/internal/ims/servicemodules/ss/ActionElm;
    :cond_7
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 102
    .end local v2    # "k":I
    .end local v11    # "child":Lorg/w3c/dom/NodeList;
    :cond_8
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto/16 :goto_1

    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "document":Lorg/w3c/dom/Document;
    .local v2, "inputStream":Ljava/io/InputStream;
    .local v4, "document":Lorg/w3c/dom/Document;
    :cond_9
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .line 136
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v10    # "j":I
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v17    # "document":Lorg/w3c/dom/Document;
    iget-object v2, v9, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_a

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v2, "media":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/ss/MEDIA;>;"
    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v4, v9, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-object v2, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 141
    .end local v2    # "media":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/ss/MEDIA;>;"
    :cond_a
    invoke-direct {v1, v9, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->combineCbType(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;I)V

    .line 142
    iget-object v2, v3, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->rules:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v2, "UtXmlParse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ruleId = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " conditions = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " allow = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v9, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 99
    nop

    .end local v9    # "rules":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto/16 :goto_0

    .line 151
    .end local v5    # "cbType":I
    .end local v7    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v8    # "i":I
    .end local v17    # "document":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_9

    .line 149
    :catch_1
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_a

    .line 147
    :catch_2
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_b

    .line 99
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .local v2, "inputStream":Ljava/io/InputStream;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v5    # "cbType":I
    .restart local v7    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v8    # "i":I
    :cond_b
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v17    # "document":Lorg/w3c/dom/Document;
    goto :goto_8

    .line 98
    .end local v8    # "i":I
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "document":Lorg/w3c/dom/Document;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    :cond_c
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .line 153
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v5    # "cbType":I
    .end local v7    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    :goto_8
    move-object/from16 v2, v16

    goto :goto_d

    .line 151
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    goto :goto_9

    .line 149
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    goto :goto_a

    .line 147
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    goto :goto_b

    .line 151
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v0

    goto :goto_9

    .line 149
    :catch_7
    move-exception v0

    goto :goto_a

    .line 147
    :catch_8
    move-exception v0

    goto :goto_b

    .line 151
    :catch_9
    move-exception v0

    move-object/from16 v6, p1

    .line 152
    .local v0, "e":Ljava/io/IOException;
    :goto_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v0

    move-object/from16 v6, p1

    .line 150
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_a
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .end local v0    # "e":Lorg/xml/sax/SAXException;
    goto :goto_c

    .line 147
    :catch_b
    move-exception v0

    move-object/from16 v6, p1

    .line 148
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_b
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 153
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_c
    nop

    .line 155
    :goto_d
    return-object v3
.end method

.method public parseCallForwarding(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    .locals 11
    .param p1, "xml"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "inputStream":Ljava/io/InputStream;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;-><init>()V

    .line 217
    .local v1, "cfData":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v2

    .line 218
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 220
    .local v2, "document":Lorg/w3c/dom/Document;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractBoolean(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->active:Z

    .line 221
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mReplyTimer:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractInt(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)I

    move-result v3

    iput v3, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 222
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRulePath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractNodeList(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 223
    .local v3, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_6

    .line 224
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 225
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v6, "id"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "ruleid":Ljava/lang/String;
    const-string/jumbo v6, "rule2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "rule3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "-vm"

    .line 227
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "-default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 228
    goto/16 :goto_3

    .line 231
    :cond_0
    new-instance v6, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    invoke-direct {v6}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;-><init>()V

    .line 232
    .local v6, "rules":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    iput-object v5, v6, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->ruleId:Ljava/lang/String;

    .line 234
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 235
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 236
    .local v8, "child":Lorg/w3c/dom/NodeList;
    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "conditions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 237
    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->getConditions(Lorg/w3c/dom/NodeList;)Lcom/sec/internal/ims/servicemodules/ss/Condition;

    move-result-object v9

    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    goto :goto_2

    .line 238
    :cond_1
    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "actions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 239
    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->getForwardData(Lorg/w3c/dom/NodeList;)Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    move-result-object v9

    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    .line 234
    .end local v8    # "child":Lorg/w3c/dom/NodeList;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 242
    .end local v7    # "j":I
    :cond_3
    iget-object v7, v6, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 243
    new-instance v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v7}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    iput-object v7, v6, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 244
    iget-object v7, v6, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 v8, 0x0

    iput v8, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 245
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v7, "media":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/ss/MEDIA;>;"
    sget-object v8, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v8, v6, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-object v7, v8, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 249
    .end local v7    # "media":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/ss/MEDIA;>;"
    :cond_4
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->rules:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v5    # "ruleid":Ljava/lang/String;
    .end local v6    # "rules":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 257
    .end local v2    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 258
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 255
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 256
    .local v2, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .end local v2    # "e":Lorg/xml/sax/SAXException;
    goto :goto_4

    .line 253
    :catch_2
    move-exception v2

    .line 254
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 259
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_6
    :goto_4
    nop

    .line 261
    :goto_5
    return-object v1
.end method

.method public parseCallWaitingOrClip(Ljava/lang/String;)Z
    .locals 4
    .param p1, "xml"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 76
    .local v1, "activation":Z
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v2

    .line 77
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 78
    .local v2, "document":Lorg/w3c/dom/Document;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractBoolean(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .end local v2    # "document":Lorg/w3c/dom/Document;
    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 81
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 82
    .local v2, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .end local v2    # "e":Lorg/xml/sax/SAXException;
    goto :goto_0

    .line 79
    :catch_2
    move-exception v2

    .line 80
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 85
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    nop

    .line 86
    :goto_1
    return v1
.end method

.method public parseClir(Ljava/lang/String;)I
    .locals 6
    .param p1, "xml"    # Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x2

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v2

    .line 163
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 164
    .local v2, "document":Lorg/w3c/dom/Document;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractBoolean(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Z

    move-result v3

    .line 165
    .local v3, "active":Z
    if-nez v3, :cond_0

    .line 166
    const/4 v1, 0x0

    return v1

    .line 168
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDefaultBehavior:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "extractStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 170
    return v1

    .line 173
    :cond_1
    const-string/jumbo v5, "presentation-restricted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    const/4 v1, 0x1

    return v1

    .line 175
    :cond_2
    const-string/jumbo v5, "presentation-not-restricted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_3

    .line 176
    return v1

    .line 175
    .end local v2    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "active":Z
    .end local v4    # "extractStr":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 182
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 180
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 181
    .local v2, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .end local v2    # "e":Lorg/xml/sax/SAXException;
    goto :goto_0

    .line 178
    :catch_2
    move-exception v2

    .line 179
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 184
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    nop

    .line 185
    :goto_1
    return v1
.end method

.method public parseError(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "xml"    # Ljava/lang/String;

    .line 265
    const-string/jumbo v0, "phrase"

    const/4 v1, 0x0

    .line 266
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 268
    .local v2, "errorMsg":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v4, "utf-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v3

    .line 269
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v3, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 270
    .local v3, "document":Lorg/w3c/dom/Document;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mErrorPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v4, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractNodeList(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 271
    .local v4, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_2

    .line 272
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 273
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, "name":Ljava/lang/String;
    const-string v7, "constraint-failure"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 275
    goto :goto_1

    .line 277
    :cond_0
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 278
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v7

    .line 272
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 286
    .end local v3    # "document":Lorg/w3c/dom/Document;
    .end local v4    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v5    # "i":I
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 284
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 285
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .end local v0    # "e":Lorg/xml/sax/SAXException;
    goto :goto_2

    .line 282
    :catch_2
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 288
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :goto_2
    nop

    .line 289
    :goto_3
    return-object v2
.end method
