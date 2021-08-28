.class public Lcom/sec/internal/omanetapi/nms/AllPayloads;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "AllPayloads.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x543cfc1877965590L


# instance fields
.field private mObjectId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/sec/internal/omanetapi/nms/AllPayloads;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/AllPayloads;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "storeName"    # Ljava/lang/String;
    .param p4, "boxId"    # Ljava/lang/String;
    .param p5, "objectId"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-object p5, p0, Lcom/sec/internal/omanetapi/nms/AllPayloads;->mObjectId:Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/AllPayloads;->buildAPISpecificURLFromBase()V

    .line 27
    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/AllPayloads;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 45
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "objects"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 47
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/AllPayloads;->mObjectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 49
    const-string/jumbo v1, "payload"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/omanetapi/nms/AllPayloads;->mBaseUrl:Ljava/lang/String;

    .line 52
    sget-object v1, Lcom/sec/internal/omanetapi/nms/AllPayloads;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/AllPayloads;->mBaseUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public initGetRequest()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initCommonGetRequest()V

    .line 35
    return-void
.end method

.method public initGetRequest([Ljava/lang/String;)V
    .locals 1
    .param p1, "acceptContentType"    # [Ljava/lang/String;

    .line 38
    invoke-super {p0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initCommonGetRequest()V

    .line 39
    const-string v0, "Accept"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/omanetapi/nms/AllPayloads;->setMultipleContentType(Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    return-void
.end method
