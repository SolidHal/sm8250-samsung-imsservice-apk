.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;
.super Ljava/lang/Object;
.source "SendMessageParams.java"


# instance fields
.field public mBody:Ljava/lang/String;

.field public mCallback:Landroid/os/Message;

.field public mContentType:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

.field public mDispositionNotification:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mExtraFt:Z

.field public mGroupCcList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public mImdnMessageId:Ljava/lang/String;

.field public mImdnTime:Ljava/util/Date;

.field public mMaapTrafficType:Ljava/lang/String;

.field public mRawHandle:Ljava/lang/Object;

.field public mReferenceId:Ljava/lang/String;

.field public mReferenceType:Ljava/lang/String;

.field public mReliableMessage:Ljava/lang/String;

.field public mUserAlias:Ljava/lang/String;

.field public mXmsMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "userAlias"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "imdnMessageId"    # Ljava/lang/String;
    .param p6, "imdnTime"    # Ljava/util/Date;
    .param p8, "deviceName"    # Ljava/lang/String;
    .param p9, "reliableMessage"    # Ljava/lang/String;
    .param p10, "extraFt"    # Z
    .param p11, "xmsMessage"    # Ljava/lang/String;
    .param p13, "callback"    # Landroid/os/Message;
    .param p14, "maapTrafficType"    # Ljava/lang/String;
    .param p15, "referenceId"    # Ljava/lang/String;
    .param p16, "referenceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Landroid/os/Message;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    .local p7, "dispositionNotification":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    .local p12, "groupCcList":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRawHandle:Ljava/lang/Object;

    .line 53
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mBody:Ljava/lang/String;

    .line 54
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mUserAlias:Ljava/lang/String;

    .line 55
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    .line 56
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnMessageId:Ljava/lang/String;

    .line 57
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnTime:Ljava/util/Date;

    .line 58
    move-object/from16 v7, p13

    iput-object v7, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    .line 59
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mDispositionNotification:Ljava/util/Set;

    .line 60
    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mDeviceName:Ljava/lang/String;

    .line 61
    move-object/from16 v10, p9

    iput-object v10, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReliableMessage:Ljava/lang/String;

    .line 62
    move/from16 v11, p10

    iput-boolean v11, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mExtraFt:Z

    .line 63
    move-object/from16 v12, p11

    iput-object v12, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mXmsMessage:Ljava/lang/String;

    .line 64
    move-object/from16 v13, p12

    iput-object v13, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mGroupCcList:Ljava/util/Set;

    .line 65
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    .line 66
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    .line 67
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendMessageParams [mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mBody:Ljava/lang/String;

    .line 73
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mUserAlias:Ljava/lang/String;

    .line 74
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDispositionNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mDispositionNotification:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReliableMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReliableMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtraFt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mExtraFt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mXmsMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mXmsMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaapTrafficType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReferenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReferenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    return-object v0
.end method
