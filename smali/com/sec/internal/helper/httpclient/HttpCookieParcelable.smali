.class public Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;
.super Ljava/lang/Object;
.source "HttpCookieParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cookie:Ljava/net/HttpCookie;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable$1;

    invoke-direct {v0}, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable$1;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/net/HttpCookie;

    invoke-direct {v2, v0, v1}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setComment(Ljava/lang/String;)V

    .line 21
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setCommentURL(Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setDiscard(Z)V

    .line 23
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpCookie;->setMaxAge(J)V

    .line 25
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    .line 26
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Ljava/net/HttpCookie;->setSecure(Z)V

    .line 28
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpCookie;)V
    .locals 0
    .param p1, "cookie"    # Ljava/net/HttpCookie;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    .line 14
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getCookie()Ljava/net/HttpCookie;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 42
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getCommentURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDiscard()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 52
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return-void
.end method
