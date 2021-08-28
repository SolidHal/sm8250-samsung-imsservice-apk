.class public Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;
.super Ljava/lang/Object;
.source "ImParticipantUri.java"


# instance fields
.field private final mImsUri:Lcom/sec/ims/util/ImsUri;


# direct methods
.method public constructor <init>(Lcom/sec/ims/util/ImsUri;)V
    .locals 0
    .param p1, "imsUri"    # Lcom/sec/ims/util/ImsUri;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->mImsUri:Lcom/sec/ims/util/ImsUri;

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 18
    if-ne p0, p1, :cond_0

    .line 19
    const/4 v0, 0x1

    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 22
    return v0

    .line 24
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 25
    return v0

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->getImsUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->getImsUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getImsUri()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->mImsUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 32
    const/16 v0, 0x1f

    .line 33
    .local v0, "prime":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->mImsUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v1, v2, :cond_2

    .line 34
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->mImsUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "user":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->mImsUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "host":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->mImsUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getPort()I

    move-result v3

    .line 37
    .local v3, "port":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    if-nez v1, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    const-string v6, "@"

    move-object v1, v6

    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    return v4

    .line 39
    .end local v1    # "user":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->mImsUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
