.class Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey$1;
.super Ljava/lang/Object;
.source "EucMessageKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .locals 1
    .param p1, "size"    # I

    .line 41
    new-array v0, p1, [Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey$1;->newArray(I)[Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object p1

    return-object p1
.end method
