.class Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService$1;
.super Ljava/lang/Object;
.source "ResponseManageService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 39
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;

    invoke-direct {v0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;
    .locals 1
    .param p1, "size"    # I

    .line 44
    new-array v0, p1, [Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService$1;->newArray(I)[Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;

    move-result-object p1

    return-object p1
.end method
