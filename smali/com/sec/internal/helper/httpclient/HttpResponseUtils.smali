.class public Lcom/sec/internal/helper/httpclient/HttpResponseUtils;
.super Ljava/lang/Object;
.source "HttpResponseUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseXmlResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 5
    .param p0, "httpResponse"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .param p2, "namespaces"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sec/internal/helper/httpclient/HttpResponseParams;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 13
    .local p1, "genericType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "xml":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 16
    return-object v1

    .line 20
    :cond_0
    :try_start_0
    new-instance v2, Lcom/sec/internal/helper/httpclient/HttpResponseUtils$1;

    invoke-direct {v2}, Lcom/sec/internal/helper/httpclient/HttpResponseUtils$1;-><init>()V

    .line 31
    .local v2, "parserCreator":Lcom/stanfy/gsonxml/XmlParserCreator;
    new-instance v3, Lcom/stanfy/gsonxml/GsonXmlBuilder;

    invoke-direct {v3}, Lcom/stanfy/gsonxml/GsonXmlBuilder;-><init>()V

    .line 32
    invoke-virtual {v3, v2}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setXmlParserCreator(Lcom/stanfy/gsonxml/XmlParserCreator;)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v3

    .line 33
    invoke-virtual {v3, p2}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setTreatNamespaces(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->create()Lcom/stanfy/gsonxml/GsonXml;

    move-result-object v3

    .line 36
    .local v3, "gsonXml":Lcom/stanfy/gsonxml/GsonXml;
    invoke-virtual {v3, v0, p1}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 37
    .end local v2    # "parserCreator":Lcom/stanfy/gsonxml/XmlParserCreator;
    .end local v3    # "gsonXml":Lcom/stanfy/gsonxml/GsonXml;
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "parseXmlResponse()"

    const-string v4, "cannot parse result"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v1
.end method
