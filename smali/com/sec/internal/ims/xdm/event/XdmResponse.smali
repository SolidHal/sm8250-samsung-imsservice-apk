.class public final Lcom/sec/internal/ims/xdm/event/XdmResponse;
.super Ljava/lang/Object;
.source "XdmResponse.java"


# instance fields
.field public final mEtag:Ljava/lang/String;

.field public final mReason:Ljava/lang/String;

.field public final mRetryAfter:Ljava/lang/String;

.field public final mStatusCode:I

.field public final mSuccess:Z

.field public final mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZILjava/lang/String;)V
    .locals 7
    .param p1, "success"    # Z
    .param p2, "statusCode"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 35
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/xdm/event/XdmResponse;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "statusCode"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "etag"    # Ljava/lang/String;
    .param p5, "retryAfter"    # Ljava/lang/String;
    .param p6, "uuid"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/sec/internal/ims/xdm/event/XdmResponse;->mSuccess:Z

    .line 27
    iput p2, p0, Lcom/sec/internal/ims/xdm/event/XdmResponse;->mStatusCode:I

    .line 28
    iput-object p3, p0, Lcom/sec/internal/ims/xdm/event/XdmResponse;->mReason:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/sec/internal/ims/xdm/event/XdmResponse;->mEtag:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/sec/internal/ims/xdm/event/XdmResponse;->mUuid:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/sec/internal/ims/xdm/event/XdmResponse;->mRetryAfter:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XdmResponse [mSuccess ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/xdm/event/XdmResponse;->mSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mStatusCode ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/xdm/event/XdmResponse;->mStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEtag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmResponse;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmResponse;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRetryAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmResponse;->mRetryAfter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
