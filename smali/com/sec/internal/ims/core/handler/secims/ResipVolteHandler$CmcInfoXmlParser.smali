.class public Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$CmcInfoXmlParser;
.super Ljava/lang/Object;
.source "ResipVolteHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CmcInfoXmlParser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseXml(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;
    .locals 12
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 2003
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;-><init>()V

    .line 2004
    .local v0, "cmcInfoEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CmcInfoXmlParser parseXml:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipVolteHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    .line 2006
    .local v1, "xPath":Ljavax/xml/xpath/XPath;
    const-string v3, "//cmc-info-data"

    invoke-interface {v1, v3}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v3

    .line 2008
    .local v3, "expCmcInfoData":Ljavax/xml/xpath/XPathExpression;
    const-string/jumbo v4, "record-event"

    invoke-interface {v1, v4}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v4

    .line 2009
    .local v4, "expRecordEvent":Ljavax/xml/xpath/XPathExpression;
    const-string v5, "external-call-id"

    invoke-interface {v1, v5}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v5

    .line 2011
    .local v5, "expExternalCallId":Ljavax/xml/xpath/XPathExpression;
    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 2013
    .local v6, "xmlSource":Lorg/xml/sax/InputSource;
    sget-object v7, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v6, v7}, Ljavax/xml/xpath/XPathExpression;->evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Node;

    .line 2014
    .local v7, "NodeAs":Lorg/w3c/dom/Node;
    if-nez v7, :cond_0

    .line 2015
    const-string/jumbo v8, "parseXml not found Node : cmc-info-data"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    return-object v0

    .line 2019
    :cond_0
    invoke-interface {v4, v7}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2020
    .local v8, "strRecordEvent":Ljava/lang/String;
    invoke-interface {v5, v7}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2022
    .local v9, "strExternalCallId":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parseXml: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;->setRecordEvent(I)V

    .line 2024
    invoke-virtual {v0, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;->setExternalCallId(Ljava/lang/String;)V

    .line 2026
    return-object v0
.end method
