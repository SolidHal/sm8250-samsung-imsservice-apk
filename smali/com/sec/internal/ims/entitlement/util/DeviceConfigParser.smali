.class public final Lcom/sec/internal/ims/entitlement/util/DeviceConfigParser;
.super Ljava/lang/Object;
.source "DeviceConfigParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PARSER_CREATOR:Lcom/stanfy/gsonxml/XmlParserCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/sec/internal/ims/entitlement/util/DeviceConfigParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/util/DeviceConfigParser;->LOG_TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/sec/internal/ims/entitlement/util/DeviceConfigParser$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/entitlement/util/DeviceConfigParser$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/util/DeviceConfigParser;->PARSER_CREATOR:Lcom/stanfy/gsonxml/XmlParserCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method static createGsonXml(Z)Lcom/stanfy/gsonxml/GsonXml;
    .locals 2
    .param p0, "namespaces"    # Z

    .line 47
    new-instance v0, Lcom/stanfy/gsonxml/GsonXmlBuilder;

    invoke-direct {v0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/entitlement/util/DeviceConfigParser;->PARSER_CREATOR:Lcom/stanfy/gsonxml/XmlParserCreator;

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setXmlParserCreator(Lcom/stanfy/gsonxml/XmlParserCreator;)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setTreatNamespaces(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v0

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setSameNameLists(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->create()Lcom/stanfy/gsonxml/GsonXml;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method public static parseDeviceConfig(Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;
    .locals 4
    .param p0, "deviceConfigXml"    # Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/DeviceConfigParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceConfigXml: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-eqz p0, :cond_0

    .line 55
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/DeviceConfigParser;->createGsonXml(Z)Lcom/stanfy/gsonxml/GsonXml;

    move-result-object v0

    .line 59
    .local v0, "gsonXml":Lcom/stanfy/gsonxml/GsonXml;
    const-class v1, Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;

    invoke-virtual {v0, p0, v1}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v1, "deviceConfiguration":Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;
    return-object v1

    .line 61
    .end local v0    # "gsonXml":Lcom/stanfy/gsonxml/GsonXml;
    .end local v1    # "deviceConfiguration":Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/DeviceConfigParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseDeviceConfig: malformed device config xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
