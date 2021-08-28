.class public Lcom/sec/internal/ims/cmstore/helper/SyncParam;
.super Ljava/lang/Object;
.source "SyncParam.java"


# instance fields
.field public mLine:Ljava/lang/String;

.field public mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 17
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 18
    return v0

    .line 21
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 22
    return v1

    .line 25
    :cond_1
    instance-of v2, p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27
    return v1

    .line 30
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncParam = [ mLine = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ], [ mType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
