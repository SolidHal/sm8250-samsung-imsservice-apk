.class public Lcom/sec/internal/omanetapi/nms/IndividualObject;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "IndividualObject.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x447356b96295c7d0L


# instance fields
.field private final mObjectId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/sec/internal/omanetapi/nms/IndividualObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/IndividualObject;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "storeName"    # Ljava/lang/String;
    .param p4, "boxId"    # Ljava/lang/String;
    .param p5, "objectId"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput-object p5, p0, Lcom/sec/internal/omanetapi/nms/IndividualObject;->mObjectId:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/IndividualObject;->buildAPISpecificURLFromBase()V

    .line 29
    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/IndividualObject;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 42
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "objects"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 43
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualObject;->mObjectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 44
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualObject;->mBaseUrl:Ljava/lang/String;

    .line 45
    sget-object v1, Lcom/sec/internal/omanetapi/nms/IndividualObject;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/IndividualObject;->mBaseUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public initDeleteRequest()V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initCommonDeleteRequest()V

    .line 37
    return-void
.end method

.method public initGetRequest()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initCommonGetRequest()V

    .line 33
    return-void
.end method
