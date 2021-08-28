.class public final Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$NsdsConfigs;
.super Ljava/lang/Object;
.source "NSDSContractExt.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$CommonColumns;
.implements Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$NsdsConfigColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NsdsConfigs"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final QUERY_PARAM_ENTITLEMENT_URI:Ljava/lang/String; = "entitlement_url"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1124
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "nsds_configs"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$NsdsConfigs;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    return-void
.end method

.method public static final buildNsdsConfigUri(J)Landroid/net/Uri;
    .locals 1
    .param p0, "rowId"    # J

    .line 1137
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$NsdsConfigs;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
