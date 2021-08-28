.class public Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
.super Ljava/lang/Object;
.source "ImSubjectData.java"


# instance fields
.field private final mParticipant:Lcom/sec/ims/util/ImsUri;

.field private final mSubject:Ljava/lang/String;

.field private final mTimestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "participant"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "timestamp"    # Ljava/util/Date;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->mSubject:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->mParticipant:Lcom/sec/ims/util/ImsUri;

    .line 20
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->mTimestamp:Ljava/util/Date;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 37
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 38
    return v0

    .line 41
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 42
    return v1

    .line 45
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 46
    return v1

    .line 49
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 50
    .local v2, "other":Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->mSubject:Ljava/lang/String;

    iget-object v4, v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->mParticipant:Lcom/sec/ims/util/ImsUri;

    iget-object v4, v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->mParticipant:Lcom/sec/ims/util/ImsUri;

    .line 51
    invoke-virtual {v3, v4}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->mTimestamp:Ljava/util/Date;

    iget-object v4, v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->mTimestamp:Ljava/util/Date;

    .line 52
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 50
    :goto_0
    return v0
.end method

.method public getParticipant()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->mParticipant:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->mTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImSubjectData [subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->mSubject:Ljava/lang/String;

    .line 58
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", participant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->mParticipant:Lcom/sec/ims/util/ImsUri;

    .line 59
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    return-object v0
.end method
