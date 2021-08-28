.class public Lcom/sec/internal/ims/servicemodules/im/FtTranslation;
.super Lcom/sec/internal/ims/servicemodules/im/TranslationBase;
.source "FtTranslation.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;


# static fields
.field private static final INNER_RELIABLE_URI:Ljava/lang/String; = "content://com.samsung.rcs.im/getreliableimage/"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFileExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field private final mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/FtProcessor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;
    .param p3, "ftProcessor"    # Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    .line 57
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/TranslationBase;-><init>()V

    .line 55
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFileExecutor:Ljava/util/concurrent/ExecutorService;

    .line 58
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 60
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {p2, v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    .line 62
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    .line 63
    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 66
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isBMode(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/ims/extensions/ContextExt;->OWNER:Landroid/os/UserHandle;

    invoke-static {v0, p1, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v0, p1, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 74
    :goto_0
    return-void
.end method

.method private handleFileResizeResponse(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .line 288
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 289
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 290
    .local v8, "messageId":J
    const-string/jumbo v1, "request_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 291
    .local v1, "isSuccessful":Z
    const-string v2, "filePath"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 293
    .local v10, "filePath":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 294
    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFileExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v12, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtTranslation$kH5NctZxwGXENoYgdOEBPUHB12A;

    move-object v2, v12

    move-object v3, p0

    move-wide v4, v8

    move-object v6, v10

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtTranslation$kH5NctZxwGXENoYgdOEBPUHB12A;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtTranslation;JLjava/lang/String;Z)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 306
    :cond_0
    return-void
.end method

.method private requestAcceptFileTransfer(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 220
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 222
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 225
    .local v1, "messageId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->acceptFileTransfer(I)V

    .line 227
    .end local v1    # "messageId":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method private requestAttachFileToGroupChat(Landroid/content/Intent;)V
    .locals 26
    .param p1, "intent"    # Landroid/content/Intent;

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 180
    .local v13, "extras":Landroid/os/Bundle;
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestAttachFileToGroupChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v0, "chatId"

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 182
    .local v14, "chatId":Ljava/lang/String;
    const-string v0, "filePath"

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 183
    .local v15, "filePath":Ljava/lang/String;
    const-string v0, "is_resizable"

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 184
    .local v16, "isResizable":Z
    const-string v0, "disposition_notification"

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 185
    .local v17, "disposition":Ljava/lang/String;
    const-string/jumbo v0, "request_session_id"

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    .line 186
    .local v18, "requestMessageId":Ljava/lang/String;
    const-string v0, "is_broadcast_msg"

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 187
    .local v19, "isBroadcastMsg":Z
    const-string v0, "ismassfiletransfer"

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 188
    .local v20, "isExtraFt":Z
    const-string v0, "isftsms"

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 189
    .local v21, "isFtSms":Z
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->toInt()I

    move-result v0

    const-string v1, "file_disposition"

    move-object/from16 v12, p1

    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->valueOf(I)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v22

    .line 190
    .local v22, "fileDisposition":Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    const-string v0, "ft_contenttype"

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 192
    .local v23, "contentType":Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 193
    move-object/from16 v11, p0

    iget-object v10, v11, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFileExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtTranslation$3XQRDuteLFsZNcSLYDWOsSr-kxA;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v23

    move/from16 v8, v16

    move-object/from16 v24, v13

    move-object v13, v9

    .end local v13    # "extras":Landroid/os/Bundle;
    .local v24, "extras":Landroid/os/Bundle;
    move/from16 v9, v19

    move-object/from16 v25, v14

    move-object v14, v10

    .end local v14    # "chatId":Ljava/lang/String;
    .local v25, "chatId":Ljava/lang/String;
    move/from16 v10, v20

    move/from16 v11, v21

    move-object/from16 v12, v22

    invoke-direct/range {v0 .. v12}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtTranslation$3XQRDuteLFsZNcSLYDWOsSr-kxA;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtTranslation;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)V

    invoke-interface {v14, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 192
    .end local v24    # "extras":Landroid/os/Bundle;
    .end local v25    # "chatId":Ljava/lang/String;
    .restart local v13    # "extras":Landroid/os/Bundle;
    .restart local v14    # "chatId":Ljava/lang/String;
    :cond_0
    move-object/from16 v24, v13

    move-object/from16 v25, v14

    .line 202
    .end local v13    # "extras":Landroid/os/Bundle;
    .end local v14    # "chatId":Ljava/lang/String;
    .restart local v24    # "extras":Landroid/os/Bundle;
    .restart local v25    # "chatId":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private requestAttachFileToSingleChat(Landroid/content/Intent;)V
    .locals 32
    .param p1, "intent"    # Landroid/content/Intent;

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 134
    .local v15, "extras":Landroid/os/Bundle;
    const-string v0, "filePath"

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 135
    .local v14, "filePath":Ljava/lang/String;
    const-string v0, "contactUri"

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/net/Uri;

    .line 136
    .local v16, "uri":Landroid/net/Uri;
    const-string v0, "is_resizable"

    const/4 v1, 0x0

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 137
    .local v17, "isResizable":Z
    const-string v0, "disposition_notification"

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 138
    .local v13, "disposition":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->toInt()I

    move-result v0

    const-string v2, "file_disposition"

    move-object/from16 v12, p1

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->valueOf(I)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v18

    .line 139
    .local v18, "fileDisposition":Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    const-string/jumbo v0, "request_session_id"

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, "requestMessageId":Ljava/lang/String;
    const-string v0, "is_publicAccountMsg"

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 141
    .local v19, "isPublicAccountMsg":Z
    const-string v0, "ismassfiletransfer"

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 142
    .local v20, "isExtraFt":Z
    const-string v0, "isftsms"

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 143
    .local v21, "isFtSms":Z
    const-string/jumbo v0, "sim_slot_id"

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 144
    .local v22, "slotId":Ljava/lang/String;
    const-string v0, "ft_contenttype"

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 145
    .local v23, "contentType":Ljava/lang/String;
    const-string v0, "is_token_used"

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 146
    .local v24, "isTokenUsed":Z
    const-string v0, "is_token_link"

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 148
    .local v25, "isTokenLink":Z
    if-eqz v19, :cond_0

    .line 149
    const-string/jumbo v0, "publicAccount_Send_Domain"

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "publicAccountDomain":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/internal/helper/PublicAccountUri;->setPublicAccountDomain(Ljava/lang/String;)V

    .line 153
    .end local v0    # "publicAccountDomain":Ljava/lang/String;
    :cond_0
    if-eqz v14, :cond_1

    if-eqz v16, :cond_1

    .line 154
    move-object/from16 v10, p0

    iget-object v9, v10, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFileExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtTranslation$4M5q0SmnR-Ld7y6Lh-M2sHuHcL4;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v13

    move-object v7, v11

    move-object/from16 v26, v8

    move-object/from16 v8, v23

    move-object/from16 v27, v9

    move/from16 v9, v19

    move/from16 v10, v17

    move-object/from16 v28, v11

    .end local v11    # "requestMessageId":Ljava/lang/String;
    .local v28, "requestMessageId":Ljava/lang/String;
    move/from16 v11, v20

    move/from16 v12, v21

    move-object/from16 v29, v13

    .end local v13    # "disposition":Ljava/lang/String;
    .local v29, "disposition":Ljava/lang/String;
    move-object/from16 v13, v18

    move-object/from16 v30, v14

    .end local v14    # "filePath":Ljava/lang/String;
    .local v30, "filePath":Ljava/lang/String;
    move/from16 v14, v24

    move-object/from16 v31, v15

    .end local v15    # "extras":Landroid/os/Bundle;
    .local v31, "extras":Landroid/os/Bundle;
    move/from16 v15, v25

    invoke-direct/range {v0 .. v15}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtTranslation$4M5q0SmnR-Ld7y6Lh-M2sHuHcL4;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtTranslation;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZ)V

    move-object/from16 v1, v26

    move-object/from16 v0, v27

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move-object/from16 v4, v28

    move-object/from16 v3, v29

    move-object/from16 v2, v30

    goto :goto_0

    .line 153
    .end local v28    # "requestMessageId":Ljava/lang/String;
    .end local v29    # "disposition":Ljava/lang/String;
    .end local v30    # "filePath":Ljava/lang/String;
    .end local v31    # "extras":Landroid/os/Bundle;
    .restart local v11    # "requestMessageId":Ljava/lang/String;
    .restart local v13    # "disposition":Ljava/lang/String;
    .restart local v14    # "filePath":Ljava/lang/String;
    .restart local v15    # "extras":Landroid/os/Bundle;
    :cond_1
    move-object/from16 v28, v11

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move-object/from16 v31, v15

    .line 173
    .end local v11    # "requestMessageId":Ljava/lang/String;
    .end local v13    # "disposition":Ljava/lang/String;
    .end local v14    # "filePath":Ljava/lang/String;
    .end local v15    # "extras":Landroid/os/Bundle;
    .restart local v28    # "requestMessageId":Ljava/lang/String;
    .restart local v29    # "disposition":Ljava/lang/String;
    .restart local v30    # "filePath":Ljava/lang/String;
    .restart local v31    # "extras":Landroid/os/Bundle;
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal arguments from message app: filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v30

    .end local v30    # "filePath":Ljava/lang/String;
    .local v2, "filePath":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "disposition: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v29

    .end local v29    # "disposition":Ljava/lang/String;
    .local v3, "disposition":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestMessageId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v28

    .end local v28    # "requestMessageId":Ljava/lang/String;
    .local v4, "requestMessageId":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void
.end method

.method private requestCancelFileTransfer(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 262
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 264
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 267
    .local v1, "messageId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->cancelFileTransfer(I)V

    .line 269
    .end local v1    # "messageId":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method private requestDeclineFileTransfer(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 230
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 232
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 235
    .local v1, "messageId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->rejectFileTransfer(I)V

    .line 237
    .end local v1    # "messageId":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method private requestReadFile(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 213
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 215
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 216
    .local v1, "messageId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->readFile(J)V

    .line 217
    return-void
.end method

.method private requestResumeReceivingFileTransfer(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 252
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 254
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 257
    .local v1, "messageId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->resumeReceivingTransfer(I)V

    .line 259
    .end local v1    # "messageId":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method private requestResumeSendingFileTransfer(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 240
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 242
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 244
    .local v1, "messageId":Ljava/lang/Long;
    const/4 v2, 0x0

    const-string v3, "is_resizable"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 245
    .local v2, "isResizable":Z
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestResumeSendingFileTransfer isResizable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->resumeSendingTransfer(IZ)V

    .line 249
    .end local v1    # "messageId":Ljava/lang/Long;
    .end local v2    # "isResizable":Z
    :cond_0
    return-void
.end method

.method private requestSendFile(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 205
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 208
    .local v1, "messageId":Ljava/lang/Long;
    const-string v2, "device_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "deviceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->sendFile(JLjava/lang/String;)V

    .line 210
    return-void
.end method

.method private requestSetAutoAcceptFt(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 272
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 273
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "sim_slot_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "slotId":Ljava/lang/String;
    const-string v2, "autoAcceptState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 276
    .local v2, "accept":I
    const/4 v3, 0x0

    .line 277
    .local v3, "phoneId":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 279
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 282
    goto :goto_0

    .line 280
    :catch_0
    move-exception v4

    .line 281
    .local v4, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid slot id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setAutoAcceptFt(II)V

    .line 285
    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "com.samsung.rcs.framework.filetransfer.action.READ_FILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "com.samsung.rcs.framework.filetransfer.action.ATTACH_FILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "com.samsung.rcs.framework.filetransfer.action.TRANSFER_DECLINE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "com.samsung.rcs.framework.filetransfer.action.RESUME_SENDING_FILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "com.samsung.rcs.framework.filetransfer.response.RESPONSE_FILE_RESIZE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_5
    const-string v1, "com.samsung.rcs.framework.filetransfer.action.SET_AUTO_ACCEPT_FT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_6
    const-string v1, "com.samsung.rcs.framework.filetransfer.action.SEND_FILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "com.samsung.rcs.framework.filetransfer.action.RESUME_INCOMING_FILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_8
    const-string v1, "com.samsung.rcs.framework.filetransfer.action.TRANSFER_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_9
    const-string v1, "com.samsung.rcs.framework.filetransfer.action.TRANSFER_ACCEPT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_a
    const-string v1, "com.samsung.rcs.framework.filetransfer.action.ATTACH_FILE_TO_GROUP_CHAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_b
    const-string v1, "com.samsung.rcs.framework.filetransfer.action.SEND_FILE_TO_GROUP_CHAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 126
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent received. acition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 122
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->handleFileResizeResponse(Landroid/content/Intent;)V

    .line 123
    goto :goto_2

    .line 118
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestSetAutoAcceptFt(Landroid/content/Intent;)V

    .line 119
    goto :goto_2

    .line 115
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestReadFile(Landroid/content/Intent;)V

    .line 116
    goto :goto_2

    .line 111
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestSendFile(Landroid/content/Intent;)V

    .line 112
    goto :goto_2

    .line 106
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestResumeReceivingFileTransfer(Landroid/content/Intent;)V

    .line 107
    goto :goto_2

    .line 102
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestResumeSendingFileTransfer(Landroid/content/Intent;)V

    .line 103
    goto :goto_2

    .line 98
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestDeclineFileTransfer(Landroid/content/Intent;)V

    .line 99
    goto :goto_2

    .line 94
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestCancelFileTransfer(Landroid/content/Intent;)V

    .line 95
    goto :goto_2

    .line 90
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestAcceptFileTransfer(Landroid/content/Intent;)V

    .line 91
    goto :goto_2

    .line 86
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestAttachFileToGroupChat(Landroid/content/Intent;)V

    .line 87
    goto :goto_2

    .line 82
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestAttachFileToSingleChat(Landroid/content/Intent;)V

    .line 83
    nop

    .line 130
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x712572de -> :sswitch_b
        -0x6fae053b -> :sswitch_a
        -0x6dac5312 -> :sswitch_9
        -0x6a59d9a0 -> :sswitch_8
        -0x4425e06f -> :sswitch_7
        -0x435e999b -> :sswitch_6
        -0x239263e0 -> :sswitch_5
        0x3eb76d5c -> :sswitch_4
        0x536b7645 -> :sswitch_3
        0x5a4167b0 -> :sswitch_2
        0x6f801d48 -> :sswitch_1
        0x78abf517 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$handleFileResizeResponse$2$FtTranslation(JLjava/lang/String;Z)V
    .locals 4
    .param p1, "messageId"    # J
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "isSuccessful"    # Z

    .line 295
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    .line 296
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-eqz v0, :cond_1

    .line 297
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p3, v2}, Lcom/sec/internal/helper/FileUtils;->copyFileFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "filePathFromUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    long-to-int v3, p1

    invoke-virtual {v2, v3, p4, v1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->handleFileResizeResponse(IZLjava/lang/String;)V

    .line 301
    .end local v1    # "filePathFromUri":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 302
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Message not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_0
    return-void
.end method

.method public synthetic lambda$requestAttachFileToGroupChat$1$FtTranslation(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)V
    .locals 17
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "chatId"    # Ljava/lang/String;
    .param p4, "disposition"    # Ljava/lang/String;
    .param p5, "requestMessageId"    # Ljava/lang/String;
    .param p6, "contentType"    # Ljava/lang/String;
    .param p7, "isResizable"    # Z
    .param p8, "isBroadcastMsg"    # Z
    .param p9, "isExtraFt"    # Z
    .param p10, "isFtSms"    # Z
    .param p11, "fileDisposition"    # Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mContext:Landroid/content/Context;

    const-string v2, "fileName"

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p1

    invoke-static {v1, v4, v2}, Lcom/sec/internal/helper/FileUtils;->copyFileFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "filePathFromUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static/range {p4 .. p4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    const/4 v15, 0x0

    move-object/from16 v6, p3

    move-object v7, v1

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v16, p11

    invoke-virtual/range {v5 .. v16}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->attachFileToGroupChat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    .line 199
    :cond_0
    return-void
.end method

.method public synthetic lambda$requestAttachFileToSingleChat$0$FtTranslation(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZ)V
    .locals 21
    .param p1, "slotId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "disposition"    # Ljava/lang/String;
    .param p6, "requestMessageId"    # Ljava/lang/String;
    .param p7, "contentType"    # Ljava/lang/String;
    .param p8, "isPublicAccountMsg"    # Z
    .param p9, "isResizable"    # Z
    .param p10, "isExtraFt"    # Z
    .param p11, "isFtSms"    # Z
    .param p12, "fileDisposition"    # Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .param p13, "isTokenUsed"    # Z
    .param p14, "isTokenLink"    # Z

    .line 155
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 156
    .local v3, "phoneId":I
    if-eqz v2, :cond_0

    .line 158
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    .line 161
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 160
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid slot id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestAttachFileToSingleChat() phoneId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mContext:Landroid/content/Context;

    const-string v4, "fileName"

    move-object/from16 v5, p3

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v15, p2

    invoke-static {v0, v15, v4}, Lcom/sec/internal/helper/FileUtils;->copyFileFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "filePathFromUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 167
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v10

    const/16 v17, 0x0

    move v7, v3

    move-object v8, v0

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v18, p12

    move/from16 v19, p13

    move/from16 v20, p14

    invoke-virtual/range {v6 .. v20}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->attachFileToSingleChat(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZ)Ljava/util/concurrent/Future;

    .line 171
    :cond_1
    return-void
.end method

.method public onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 540
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCancelRequestFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 543
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.REQUEST_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 546
    const-string v1, "invokingAction"

    const-string v2, "com.samsung.rcs.framework.filetransfer.action.TRANSFER_CANCEL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 549
    return-void
.end method

.method public onFileResizingNeeded(Lcom/sec/internal/ims/servicemodules/im/FtMessage;J)V
    .locals 4
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "resizeLimit"    # J

    .line 523
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestLargeMessageModeFileResize()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v0, "msg is null"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 527
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    const-string v1, "com.samsung.rcs.framework.filetransfer.request.REQUEST_FILE_RESIZE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 530
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    const-string/jumbo v3, "request_session_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 531
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chatId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/helper/FileUtils;->getUriForFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "filePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    const-string/jumbo v1, "resize_limit"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 535
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 536
    return-void
.end method

.method public onFileTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 328
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFileTransferAttached()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v0, "msg is null"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 332
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 335
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    const-string/jumbo v3, "request_session_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 336
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chatId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const-string v2, "bytesTotal"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferMech()I

    move-result v1

    const-string v2, "ft_mech"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 342
    return-void
.end method

.method public onFileTransferCreated(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 310
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFileTransferCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v0, "msg is null"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_CREATED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chatId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 321
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/helper/FileUtils;->getUriForFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "filePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const-string v2, "bytesTotal"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 324
    return-void
.end method

.method public onFileTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 416
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFileTransferReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getReliableMessage()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "reliableMessage":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 421
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const-string v2, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "sessionId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chatId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fileName"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    const-string v3, "contactUri"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 427
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v2

    const-string v4, "bytesTotal"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 428
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getThumbnailPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/helper/FileUtils;->getUriForFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "thumbnailPath"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTimeDuration()I

    move-result v2

    const-string/jumbo v3, "timeDuration"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string/jumbo v3, "outgoing_request"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 431
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileExpire()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file_expire"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getIsSlmSvcMsg()Z

    move-result v2

    const-string v3, "is_standalone"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getId()I

    move-result v2

    .line 434
    .local v2, "type":I
    const-string v3, "message_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileDisposition()Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v3

    .line 437
    .local v3, "fileDisposition":Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    if-nez v3, :cond_1

    .line 438
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 440
    :cond_1
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->toInt()I

    move-result v5

    const-string v6, "file_disposition"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->RENDER:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    if-ne v3, v5, :cond_2

    .line 442
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getPlayingLength()I

    move-result v5

    const-string/jumbo v6, "playing_length"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    :cond_2
    iget-object v5, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mDeviceName:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 446
    iget-object v5, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mDeviceName:Ljava/lang/String;

    const-string v6, "device_name"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    :cond_3
    iget-object v5, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v5

    const-string/jumbo v6, "sessionDirection"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isRoutingMsg()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 451
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isRoutingMsg()Z

    move-result v5

    const-string v6, "is_routingMsg"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 452
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRoutingType()Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRoutingType()Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    if-eq v5, v6, :cond_4

    .line 453
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRoutingType()Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->getId()I

    move-result v5

    const-string/jumbo v6, "routing_msg_type"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    :cond_4
    if-eqz v0, :cond_5

    .line 458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.samsung.rcs.im/getreliableimage/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, "uri":Ljava/lang/String;
    const-string/jumbo v6, "reliable_message"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    .end local v5    # "uri":Ljava/lang/String;
    :cond_5
    iget-boolean v5, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mExtraFt:Z

    const-string v6, "ismassfiletransfer"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 464
    instance-of v5, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v5, :cond_6

    .line 465
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 467
    :cond_6
    iget-boolean v5, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsAutoDownload:Z

    const-string v6, "ft_autodownload"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v5, v6, :cond_8

    .line 471
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    if-nez v5, :cond_7

    const-string v5, ""

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    const-string v6, "from"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferMech()I

    move-result v5

    const-string v6, "ft_mech"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->STANDALONE_MESSAGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    if-ne v5, v6, :cond_9

    .line 476
    const-string v5, "is_bot"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 479
    :cond_9
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->putMaapExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Landroid/content/Intent;)V

    .line 481
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRcsTrafficType()Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, "rcsTrafficType":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 483
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rcsTrafficType = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string/jumbo v5, "rcs_traffic_type"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    :cond_a
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 488
    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .param p4, "isGroupChat"    # Z

    .line 516
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onImdnNotificationReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->createImdnNotificationReceivedIntent(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 519
    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .param p3, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 552
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendingFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v0, "message is null"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->createMessageSendingFailedIntent(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)Landroid/content/Intent;

    move-result-object v0

    .line 557
    .local v0, "intent":Landroid/content/Intent;
    instance-of v1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v1, :cond_0

    .line 558
    const/4 v1, 0x1

    const-string v2, "is_ft"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 560
    :cond_0
    instance-of v1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v1, :cond_1

    .line 561
    move-object v1, p1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileDataUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ftsms_dataurl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    move-object v1, p1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileBrandedUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ftsms_brandedurl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 566
    return-void
.end method

.method public onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 493
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTransferCanceled()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->INVALID_URL_TEMPLATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne v0, v1, :cond_0

    .line 495
    return-void

    .line 498
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 499
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 502
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    const-string/jumbo v3, "request_session_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 503
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chatId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    const-string/jumbo v2, "sessionDirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 506
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->hasChatbotParticipant(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 508
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    :goto_1
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->getId()I

    move-result v1

    .line 507
    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getResumableOptionCode()I

    move-result v1

    const-string/jumbo v2, "resumable_option_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getErrorNotificationId()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;->ordinal()I

    move-result v1

    const-string v2, "error_notification_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 511
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 512
    return-void
.end method

.method public onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 6
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 369
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTransferCompleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 372
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    const-string/jumbo v3, "request_session_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 375
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chatId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    const-string/jumbo v2, "sessionDirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 379
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const-string v2, "bytesTotal"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDesiredNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    const-string v2, "notification_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileExpire()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    const-string v2, "file_expire"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "filePath":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File Path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 388
    .local v2, "cacheDir":Ljava/io/File;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v3, v4, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 389
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 391
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Remove completed outgoing file"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {v1}, Lcom/sec/internal/helper/FileUtils;->removeFile(Ljava/lang/String;)Z

    goto :goto_2

    .line 394
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/sec/internal/helper/FileUtils;->getUriForFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "filePath"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    :goto_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileDisposition()Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v3

    .line 398
    .local v3, "fileDisposition":Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    if-nez v3, :cond_3

    .line 399
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 401
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->toInt()I

    move-result v4

    const-string v5, "file_disposition"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->RENDER:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    if-ne v3, v4, :cond_4

    .line 403
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getPlayingLength()I

    move-result v4

    const-string/jumbo v5, "playing_length"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileDataUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ftsms_dataurl"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isFtSms()Z

    move-result v4

    const-string v5, "isftsms"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isFtSms()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 409
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileBrandedUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ftsms_brandedurl"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    :cond_5
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 412
    return-void
.end method

.method public onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 346
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTransferProgressReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chatId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    const-string/jumbo v2, "sessionDirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferredBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const-string v2, "bytesDone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const-string v2, "bytesTotal"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 360
    return-void
.end method

.method public onTransferStarted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 365
    return-void
.end method
