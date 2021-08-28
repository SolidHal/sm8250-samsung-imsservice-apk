.class public Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
.super Ljava/util/Observable;
.source "ImParticipant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;,
        Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;
    }
.end annotation


# static fields
.field public static final NO_ALIAS:Ljava/lang/String; = ""


# instance fields
.field private final mChatId:Ljava/lang/String;

.field private mId:I

.field private mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field private mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

.field private final mUri:Lcom/sec/ims/util/ImsUri;

.field private mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "chatId"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .param p4, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;
    .param p5, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p6, "userAlias"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 25
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    .line 51
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mId:I

    .line 52
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 54
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 55
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 56
    iput-object p6, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 30
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 25
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/ims/util/ImsUri;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .param p3, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 35
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 25
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 38
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .param p3, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;
    .param p4, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "userAlias"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 25
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 44
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 45
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 46
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 237
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 238
    return v0

    .line 240
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 241
    return v1

    .line 243
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 244
    return v1

    .line 246
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 247
    .local v2, "other":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 248
    iget-object v3, v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 249
    return v1

    .line 251
    :cond_3
    iget-object v4, v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 252
    return v1

    .line 254
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez v3, :cond_6

    .line 255
    iget-object v3, v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    .line 257
    :cond_6
    iget-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v3, v0}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mId:I

    return v0
.end method

.method public getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    return-object v0
.end method

.method public getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    return-object v0
.end method

.method public getUri()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public getUserAlias()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 228
    const/16 v0, 0x1f

    .line 229
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 230
    .local v1, "result":I
    mul-int v2, v0, v1

    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 231
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int v1, v0, v2

    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 232
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 64
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mId:I

    .line 65
    return-void
.end method

.method public setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 84
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 85
    return-void
.end method

.method public setType(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 76
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 77
    return-void
.end method

.method public setUserAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImParticipant [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 221
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    .line 222
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    return-object v0
.end method
