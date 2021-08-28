.class public Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;
.super Ljava/lang/Object;
.source "SSOContentProviderConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants$SelectParams;,
        Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants$ResultFields;
    }
.end annotation


# static fields
.field public static final APPTOKEN_PATH:Ljava/lang/String; = "token"

.field public static final AUTHORITIES:[Ljava/lang/String;

.field public static final AUTHORITY:Ljava/lang/String; = "com.verizon.loginclient"

.field public static final AUTHORITY_SVS:Ljava/lang/String; = "com.verizon.services.loginclient"

.field public static final AUTHTOKEN_PATH:Ljava/lang/String; = "authtoken"

.field public static final AUTHTOKEN_URI:Ljava/lang/String; = "content://com.verizon.loginclient/authtoken"

.field public static final AUTHTOKEN_URI_SILENT:Ljava/lang/String; = "content://com.verizon.loginclient/authtoken/silent"

.field public static final AUTHTOKEN_URI_SVCS:Ljava/lang/String; = "content://com.verizon.services.loginclient/authtoken"

.field public static final AUTHTOKEN_URI_SVCS_SILENT:Ljava/lang/String; = "content://com.verizon.services.loginclient/authtoken/silent"

.field public static final CONTENT_URI:Ljava/lang/String; = "content://com.verizon.loginclient/token"

.field public static final CONTENT_URI_SILENT:Ljava/lang/String; = "content://com.verizon.loginclient/token/silent"

.field public static final CONTENT_URI_SVCS:Ljava/lang/String; = "content://com.verizon.services.loginclient/token"

.field public static final CONTENT_URI_SVCS_SILENT:Ljava/lang/String; = "content://com.verizon.services.loginclient/token/silent"

.field public static final IDENTITY_URI:Ljava/lang/String; = "content://com.verizon.loginclient/identity"

.field public static final IDENTITY_URI_SILENT:Ljava/lang/String; = "content://com.verizon.loginclient/identity/silent"

.field public static final IDENTITY_URI_SVCS:Ljava/lang/String; = "content://com.verizon.services.loginclient/identity"

.field public static final IDENTITY_URI_SVCS_SILENT:Ljava/lang/String; = "content://com.verizon.services.loginclient/identity/silent"

.field public static final IDEN_PATH:Ljava/lang/String; = "identity"

.field public static final LTE_FEATURES:[Ljava/lang/String;

.field public static final OFFICIAL_PACKAGES:[Ljava/lang/String;

.field public static final QUERY_SCHEME:Ljava/lang/String; = "content://"

.field public static final SILENT_PATH_SUFFIX:Ljava/lang/String; = "/silent"

.field public static final TOKEN:Ljava/lang/String; = "token"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 111
    const-string v0, "com.verizon.loginclient"

    const-string v1, "com.verizon.services.loginclient"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->AUTHORITIES:[Ljava/lang/String;

    .line 119
    const-string v0, "com.motricity.verizon.ssodownloadable"

    const-string v1, "com.motricity.verizon.ssoengine"

    const-string v2, "com.verizon.mips.services"

    const-string v3, "com.verizon.loginengine.unbranded"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->OFFICIAL_PACKAGES:[Ljava/lang/String;

    .line 212
    const-string v0, "com.verizon.hardware.telephony.lte"

    const-string v1, "com.verizon.hardware.telephony.ehrpd"

    const-string v2, "com.vzw.telephony.lte"

    const-string v3, "com.vzw.telephony.ehrpd"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->LTE_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
