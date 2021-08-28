.class public Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
.super Ljava/lang/Object;
.source "NSDSResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public messageId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message-id"
    .end annotation
.end field

.field public method:Ljava/lang/String;

.field public responseCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response-code"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->messageId:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->method:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 33
    iget v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->messageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->method:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    return-void
.end method
