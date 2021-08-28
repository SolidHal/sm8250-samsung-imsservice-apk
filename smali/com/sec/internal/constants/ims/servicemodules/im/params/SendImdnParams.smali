.class public final Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;
.super Ljava/lang/Object;
.source "SendImdnParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;
    }
.end annotation


# instance fields
.field public final mCallback:Landroid/os/Message;

.field public final mChatId:Ljava/lang/String;

.field public mContributionId:Ljava/lang/String;

.field public mConversationId:Ljava/lang/String;

.field public final mCpimDate:Ljava/util/Date;

.field public final mDeviceId:Ljava/lang/String;

.field public mImExtensionMNOHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mImdnDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;",
            ">;"
        }
    .end annotation
.end field

.field public mIsBotSessionAnonymized:Z

.field public mIsGroupChat:Z

.field public mOwnImsi:Ljava/lang/String;

.field public final mRawHandle:Ljava/lang/Object;

.field public final mUri:Lcom/sec/ims/util/ImsUri;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;ZLjava/util/Date;Z)V
    .locals 13
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "chatId"    # Ljava/lang/String;
    .param p4, "conversationId"    # Ljava/lang/String;
    .param p5, "contributionId"    # Ljava/lang/String;
    .param p6, "ownImsi"    # Ljava/lang/String;
    .param p7, "callback"    # Landroid/os/Message;
    .param p8, "deviceId"    # Ljava/lang/String;
    .param p9, "singleImdnData"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;
    .param p10, "isGroupChat"    # Z
    .param p11, "cpimDate"    # Ljava/util/Date;
    .param p12, "isBotSessionAnonymized"    # Z

    .line 77
    nop

    .line 78
    invoke-static/range {p9 .. p9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;-><init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Ljava/util/List;ZLjava/util/Date;Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Ljava/util/List;ZLjava/util/Date;Z)V
    .locals 0
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "chatId"    # Ljava/lang/String;
    .param p4, "conversationId"    # Ljava/lang/String;
    .param p5, "contributionId"    # Ljava/lang/String;
    .param p6, "ownImsi"    # Ljava/lang/String;
    .param p7, "callback"    # Landroid/os/Message;
    .param p8, "deviceId"    # Ljava/lang/String;
    .param p10, "isGroupChat"    # Z
    .param p11, "cpimDate"    # Ljava/util/Date;
    .param p12, "isBotSessionAnonymized"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;",
            ">;Z",
            "Ljava/util/Date;",
            "Z)V"
        }
    .end annotation

    .line 83
    .local p9, "imdnDataList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mRawHandle:Ljava/lang/Object;

    .line 85
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 86
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mChatId:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mConversationId:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mContributionId:Ljava/lang/String;

    .line 89
    iput-object p6, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mOwnImsi:Ljava/lang/String;

    .line 90
    iput-object p7, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCallback:Landroid/os/Message;

    .line 91
    iput-object p8, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mDeviceId:Ljava/lang/String;

    .line 92
    iput-object p9, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImdnDataList:Ljava/util/List;

    .line 93
    iput-boolean p10, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mIsGroupChat:Z

    .line 94
    iput-boolean p12, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mIsBotSessionAnonymized:Z

    .line 95
    iput-object p11, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCpimDate:Ljava/util/Date;

    .line 96
    return-void
.end method


# virtual methods
.method public addImExtensionMNOHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendImdnParams [mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 105
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnDataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImdnDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mDeviceId:Ljava/lang/String;

    .line 110
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImExtensionMNOHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGroupChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mIsGroupChat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCpimDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    return-object v0
.end method
