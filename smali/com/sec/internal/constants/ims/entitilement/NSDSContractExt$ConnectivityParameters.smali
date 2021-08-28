.class public final Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$ConnectivityParameters;
.super Ljava/lang/Object;
.source "NSDSContractExt.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$CommonColumns;
.implements Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$ConnectivityParamsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectivityParameters"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 969
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "connectivity_params"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$ConnectivityParameters;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    return-void
.end method

.method public static final buildConnectivityParamsUri(J)Landroid/net/Uri;
    .locals 1
    .param p0, "connectivityParamId"    # J

    .line 977
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$ConnectivityParameters;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
