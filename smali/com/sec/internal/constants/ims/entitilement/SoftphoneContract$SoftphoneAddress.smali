.class public final Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;
.super Ljava/lang/Object;
.source "SoftphoneContract.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$CommonColumns;
.implements Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$AddressColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoftphoneAddress"
.end annotation


# static fields
.field public static final ACCOUNT_ADDRESS:Ljava/lang/String; = "account_address"

.field public static final ACTIVE_ADDRESS:Ljava/lang/String; = "active_address"

.field public static final BY_ACCOUNT:Ljava/lang/String; = "by_account"

.field public static final BY_IMPI:Ljava/lang/String; = "by_impi"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CURRENT:I = 0x1

.field public static final CURRENT_ADDRESS:Ljava/lang/String; = "current_address"

.field public static final DEFAULT:I = 0x2

.field public static final DEFAULT_ADDRESS:Ljava/lang/String; = "default_address"

.field public static final DELETE:Ljava/lang/String; = "delete"

.field public static final DELETED:I = -0x1

.field public static final GET_CURRENT_ADDRESS:Ljava/lang/String; = "get_current_address"

.field public static final GET_DEFAULT_ADDRESS:Ljava/lang/String; = "get_default_address"

.field public static final SAVED_ADDRESS:Ljava/lang/String; = "saved_address"

.field public static final SET:Ljava/lang/String; = "set"

.field public static final TABLE_NAME:Ljava/lang/String; = "address"

.field public static final UNKNOWN:I = 0x0

.field public static final UNSET:Ljava/lang/String; = "unset"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 409
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "address"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    return-void
.end method

.method public static final buildActiveAddressUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # Ljava/lang/String;

    .line 489
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "active_address"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildAddressUri(J)Landroid/net/Uri;
    .locals 1
    .param p0, "addressId"    # J

    .line 473
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildAddressUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # Ljava/lang/String;

    .line 481
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "account_address"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildDeleteAddressUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # Ljava/lang/String;
    .param p1, "addressId"    # J

    .line 569
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "saved_address"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "delete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildGetCurrentAddressUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # Ljava/lang/String;

    .line 526
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "get_current_address"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "by_account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildGetCurrentAddressUriByImpi(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "impi"    # Ljava/lang/String;

    .line 534
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "get_current_address"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "by_impi"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildGetDefaultAddressUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # Ljava/lang/String;

    .line 560
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "get_default_address"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "by_account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildResetCurrentAddressUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "accountId"    # Ljava/lang/String;

    .line 518
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "current_address"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "unset"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildSetCurrentAddressUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # Ljava/lang/String;
    .param p1, "addressId"    # J

    .line 498
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "current_address"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "set"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildSetDefaultAddressUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # Ljava/lang/String;
    .param p1, "addressId"    # J

    .line 543
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "default_address"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "set"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildUnsetCurrentAddressUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # Ljava/lang/String;
    .param p1, "addressId"    # J

    .line 507
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "current_address"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "unset"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildUnsetDefaultAddressUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # Ljava/lang/String;
    .param p1, "addressId"    # J

    .line 552
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "default_address"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "unset"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
