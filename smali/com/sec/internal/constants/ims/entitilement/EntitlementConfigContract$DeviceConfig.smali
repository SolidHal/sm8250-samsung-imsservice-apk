.class public final Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;
.super Ljava/lang/Object;
.source "EntitlementConfigContract.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$CommonColumns;
.implements Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfigColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceConfig"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ELEMENT_NAME:Ljava/lang/String; = "element_name"

.field public static final ELEMENT_VLAUE:Ljava/lang/String; = "element_value"

.field public static final QUERY_PARAM_ENTITLEMENT_URI:Ljava/lang/String; = "entitlement_url"

.field public static final QUERY_PARAM_TAG_NAME:Ljava/lang/String; = "tag_name"

.field public static final XML_CONFIG:Ljava/lang/String; = "xml_config"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "config"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static final buildDeviceConfigUri(J)Landroid/net/Uri;
    .locals 1
    .param p0, "rowId"    # J

    .line 120
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildXPathExprUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "xPathSelection"    # Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "xpath"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 130
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v1, "tag_name"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 131
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
