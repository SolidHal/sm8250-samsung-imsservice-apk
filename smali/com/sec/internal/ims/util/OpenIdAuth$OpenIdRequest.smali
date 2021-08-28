.class public Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;
.super Ljava/lang/Object;
.source "OpenIdAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/util/OpenIdAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenIdRequest"
.end annotation


# instance fields
.field private final mIsTrustAllCert:Z

.field private final mNetwork:Landroid/net/Network;

.field private final mPhoneId:I

.field private final mUrl:Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "network"    # Landroid/net/Network;
    .param p4, "userAgent"    # Ljava/lang/String;
    .param p5, "isTrustAllCert"    # Z

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mPhoneId:I

    .line 33
    iput-object p2, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mUrl:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mNetwork:Landroid/net/Network;

    .line 35
    iput-object p4, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mUserAgent:Ljava/lang/String;

    .line 36
    iput-boolean p5, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mIsTrustAllCert:Z

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    .line 24
    iget v0, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mPhoneId:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    .line 24
    iget-boolean v0, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mIsTrustAllCert:Z

    return v0
.end method
