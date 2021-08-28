.class public final synthetic Lcom/sec/internal/ims/aec/util/-$$Lambda$HttpClient$o2W_9uDYzJgp7ktnGMKhRurmusU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/aec/util/-$$Lambda$HttpClient$o2W_9uDYzJgp7ktnGMKhRurmusU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/aec/util/-$$Lambda$HttpClient$o2W_9uDYzJgp7ktnGMKhRurmusU;

    invoke-direct {v0}, Lcom/sec/internal/ims/aec/util/-$$Lambda$HttpClient$o2W_9uDYzJgp7ktnGMKhRurmusU;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/aec/util/-$$Lambda$HttpClient$o2W_9uDYzJgp7ktnGMKhRurmusU;->INSTANCE:Lcom/sec/internal/ims/aec/util/-$$Lambda$HttpClient$o2W_9uDYzJgp7ktnGMKhRurmusU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/internal/ims/aec/util/HttpClient;->lambda$static$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
