.class public Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;
.super Ljava/lang/Object;
.source "GlsTranslation.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/gls/GlsModule;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "glsModule"    # Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mContext:Landroid/content/Context;

    .line 40
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {p2, v0, p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    .line 41
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    .line 42
    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 360
    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isForeground"    # Z

    .line 363
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-eqz p2, :cond_0

    .line 365
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v0, p1, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 368
    return-void
.end method

.method private getRequiredAction(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)I
    .locals 3
    .param p1, "state"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 464
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 474
    const/4 v0, 0x0

    return v0

    .line 472
    :cond_0
    return v2

    .line 470
    :cond_1
    return v1

    .line 468
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private requestAcceptLocationShare(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 148
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 149
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 150
    .local v1, "sessionId":J
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->acceptLocationShare(J)V

    .line 151
    return-void
.end method

.method private requestCreateInCallLocationShare(Landroid/content/Intent;)V
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;

    .line 117
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestCreateInCallLocationShare()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 120
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "chatId":Ljava/lang/String;
    const-string v2, "contactUri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/net/Uri;

    .line 122
    .local v11, "contactUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 123
    .local v2, "ImsContactUri":Lcom/sec/ims/util/ImsUri;
    nop

    .line 124
    const-string v3, "disposition_notification"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, "disposition":Ljava/lang/String;
    const-string v3, "location"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/location/Location;

    .line 126
    .local v13, "location":Landroid/location/Location;
    const-string v3, "label"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 127
    .local v14, "label":Ljava/lang/String;
    nop

    .line 128
    const-string/jumbo v3, "request_message_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 127
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 129
    .local v15, "requestMessageId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 131
    .local v3, "isGroupChat":Z
    const-string v4, "is_publicAccountMsg"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 134
    .local v16, "isPublicAccountMsg":Z
    nop

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 134
    const-string v5, "com.samsung.rcs.framework.geolocationshare.action.CREATE_SHARE_LOCATION_INCALL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    move-object/from16 v17, v2

    move/from16 v18, v3

    goto :goto_0

    .line 137
    :cond_0
    nop

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 137
    const-string v5, "com.samsung.rcs.framework.geolocationshare.action.CREATE_SHARE_LOCATION_INCALL_GC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    const-string/jumbo v4, "sip:anonymous@anonymous.invalid"

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 140
    const/4 v3, 0x1

    move-object/from16 v17, v2

    move/from16 v18, v3

    goto :goto_0

    .line 137
    :cond_1
    move-object/from16 v17, v2

    move/from16 v18, v3

    .line 142
    .end local v2    # "ImsContactUri":Lcom/sec/ims/util/ImsUri;
    .end local v3    # "isGroupChat":Z
    .local v17, "ImsContactUri":Lcom/sec/ims/util/ImsUri;
    .local v18, "isGroupChat":Z
    :goto_0
    move-object/from16 v10, p0

    iget-object v2, v10, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    .line 143
    invoke-static {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 142
    move-object v3, v1

    move-object/from16 v4, v17

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move/from16 v9, v16

    move/from16 v10, v18

    invoke-virtual/range {v2 .. v10}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->createInCallLocationShare(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/concurrent/Future;

    .line 145
    return-void
.end method

.method private requestRejectLocationShare(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 154
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 155
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 156
    .local v1, "sessionId":J
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->rejectLocationShare(J)V

    .line 157
    return-void
.end method

.method private requestShareLocationInChat(Landroid/content/Intent;)V
    .locals 26
    .param p1, "intent"    # Landroid/content/Intent;

    .line 72
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestShareLocationInChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 75
    .local v1, "extras":Landroid/os/Bundle;
    const-string v0, "chat_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 76
    .local v13, "cid":Ljava/lang/String;
    nop

    .line 77
    const-string v0, "disposition_notification"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 78
    .local v14, "disposition":Ljava/lang/String;
    const-string v0, "location"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/location/Location;

    .line 79
    .local v15, "location":Landroid/location/Location;
    const-string v0, "label"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "label":Ljava/lang/String;
    const-string v2, "location_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 81
    .local v16, "tempLocationType":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 82
    .local v12, "location_type":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const/4 v0, 0x0

    move-object/from16 v17, v0

    goto :goto_0

    .line 82
    :cond_0
    move-object/from16 v17, v0

    .line 85
    .end local v0    # "label":Ljava/lang/String;
    .local v17, "label":Ljava/lang/String;
    :goto_0
    nop

    .line 86
    const-string/jumbo v0, "request_message_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 85
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    .line 87
    .local v18, "requestMessageId":Ljava/lang/String;
    const-string v0, "locationLink"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 88
    .local v19, "locationLink":Ljava/lang/String;
    const-string v0, "contactUri"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/net/Uri;

    .line 89
    .local v20, "contactUri":Landroid/net/Uri;
    const-string v0, "maap_traffic_type"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 90
    .local v21, "maapTrafficType":Ljava/lang/String;
    const-string/jumbo v0, "sim_slot_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 92
    .local v11, "slotId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 93
    .local v0, "ImsContactUri":Lcom/sec/ims/util/ImsUri;
    const/4 v2, 0x0

    .line 95
    .local v2, "isGroupChat":Z
    nop

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 95
    const-string v4, "com.samsung.rcs.framework.geolocationshare.action.SHARE_LOCATION_IN_CHAT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    move-object/from16 v22, v0

    move/from16 v23, v2

    goto :goto_1

    .line 98
    :cond_1
    nop

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 98
    const-string v4, "com.samsung.rcs.framework.geolocationshare.action.SHARE_LOCATION_IN_CHAT_GC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    const/4 v2, 0x1

    move-object/from16 v22, v0

    move/from16 v23, v2

    goto :goto_1

    .line 98
    :cond_2
    move-object/from16 v22, v0

    move/from16 v23, v2

    .line 103
    .end local v0    # "ImsContactUri":Lcom/sec/ims/util/ImsUri;
    .end local v2    # "isGroupChat":Z
    .local v22, "ImsContactUri":Lcom/sec/ims/util/ImsUri;
    .local v23, "isGroupChat":Z
    :goto_1
    const/4 v2, -0x1

    .line 104
    .local v2, "phoneId":I
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 106
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 109
    goto :goto_2

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid slot id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move v0, v2

    .end local v2    # "phoneId":I
    .local v0, "phoneId":I
    :goto_2
    move-object/from16 v10, p0

    iget-object v2, v10, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-static {v14}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    move v3, v0

    move-object v4, v13

    move-object v6, v15

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v22

    move-object/from16 v24, v11

    .end local v11    # "slotId":Ljava/lang/String;
    .local v24, "slotId":Ljava/lang/String;
    move/from16 v11, v23

    move-object/from16 v25, v12

    .end local v12    # "location_type":Ljava/lang/String;
    .local v25, "location_type":Ljava/lang/String;
    move-object/from16 v12, v21

    invoke-virtual/range {v2 .. v12}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->shareLocationInChat(ILjava/lang/String;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)Ljava/util/concurrent/Future;

    .line 114
    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 45
    const-string v0, "com.samsung.rcs.framework.geolocationshare.category.ACTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 46
    nop

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.SHARE_LOCATION_IN_CHAT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 49
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.SHARE_LOCATION_IN_CHAT_GC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 51
    :cond_0
    nop

    .line 52
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.CREATE_SHARE_LOCATION_INCALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.CREATE_SHARE_LOCATION_INCALL_GC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    nop

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.ACCEPT_SHARE_LOCATION_INCALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->requestAcceptLocationShare(Landroid/content/Intent;)V

    goto :goto_2

    .line 59
    :cond_2
    nop

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.REJECT_SHARE_LOCATION_INCALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->requestRejectLocationShare(Landroid/content/Intent;)V

    goto :goto_2

    .line 62
    :cond_3
    nop

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.START_SHARE_LOCATION_INCALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->requestStartLocationShareInCall(Landroid/content/Intent;)V

    goto :goto_2

    .line 66
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 55
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->requestCreateInCallLocationShare(Landroid/content/Intent;)V

    goto :goto_2

    .line 50
    :cond_6
    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->requestShareLocationInChat(Landroid/content/Intent;)V

    .line 69
    :cond_7
    :goto_2
    return-void
.end method

.method public onAcceptLocationShareInCallResponse(JZ)V
    .locals 2
    .param p1, "sessionid"    # J
    .param p3, "success"    # Z

    .line 254
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.ACCEPT_LOCATION_SHARE_INCALL_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 259
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 260
    return-void
.end method

.method public onCancelLocationShareInCallResponse(JZ)V
    .locals 2
    .param p1, "sessionid"    # J
    .param p3, "success"    # Z

    .line 275
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.CANCEL_LOCATION_SHARE_INCALL_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 280
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 281
    return-void
.end method

.method public onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 461
    return-void
.end method

.method public onCreateInCallLocationShareResponse(Ljava/lang/String;JLjava/lang/String;Z)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "sessionid"    # J
    .param p4, "requestAppId"    # Ljava/lang/String;
    .param p5, "success"    # Z

    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.CREATE_SHARE_LOCATION_INCALL_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    nop

    .line 247
    if-nez p4, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 246
    :goto_0
    const-string/jumbo v3, "request_message_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 248
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 250
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 251
    return-void
.end method

.method public onDeleteAllLocationShareResponse(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 288
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.DELETE_ALL_LOCATION_SHARE_INCALL_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 294
    return-void
.end method

.method public onFileResizingNeeded(Lcom/sec/internal/ims/servicemodules/im/FtMessage;J)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "resizeLimit"    # J

    .line 456
    return-void
.end method

.method public onFileTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 376
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFileTransferAttached: call onOutgoingTransferAttached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->onOutgoingTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 378
    return-void
.end method

.method public onFileTransferCreated(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 372
    return-void
.end method

.method public onFileTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 382
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFileTransferReceived: call onIncomingTransferUndecided"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->onIncomingTransferUndecided(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 384
    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .param p4, "isGroupChat"    # Z

    .line 410
    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V

    .line 411
    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .param p4, "isGroupChat"    # Z

    .line 450
    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V

    .line 451
    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "isGroupChat"    # Z

    .line 346
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 347
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.RECEIVE_LOCATION_NOTIFICATION_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "message_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 350
    nop

    .line 351
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    .line 350
    const-string v2, "message_notification_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    nop

    .line 353
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    .line 352
    const-string v2, "message_notification_status_received"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    const-string v1, "is_group_chat"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 355
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 356
    return-void
.end method

.method public onIncomingLoactionShareInCall(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3
    .param p1, "transfer"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.INCOMING_LOCATION_SHARE_INCALL_INVITATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 314
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->STANDALONE_MESSAGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    if-ne v1, v2, :cond_0

    .line 315
    const/4 v1, 0x1

    const-string v2, "is_bot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 319
    return-void
.end method

.method public onLocationShareInCallCompleted(JLcom/sec/internal/constants/ims/servicemodules/im/ImDirection;ZLcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 4
    .param p1, "sessionid"    # J
    .param p3, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p4, "success"    # Z
    .param p5, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 322
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 323
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p3, v1, :cond_0

    .line 324
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.RECEIVE_LOCATION_SHARE_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 326
    :cond_0
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.SENT_LOCATION_SHARE_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    :goto_0
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 330
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 331
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    const-string/jumbo v2, "sessionDirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    if-eqz p5, :cond_2

    .line 333
    nop

    .line 334
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 333
    :goto_1
    const-string/jumbo v3, "request_message_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 335
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "maapTrafficType":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 339
    const-string v2, "maap_traffic_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    .end local v1    # "maapTrafficType":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 343
    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 1
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 426
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->updateExtInfo(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 427
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onReceiveShareLocationInChatMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V

    .line 428
    return-void
.end method

.method public onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 4
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 420
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 422
    return-void
.end method

.method public onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "messageNumber"    # I
    .param p3, "reasoncode"    # I
    .param p4, "requestMessageId"    # Ljava/lang/String;

    .line 445
    return-void
.end method

.method public onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 416
    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 8
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "reason"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .param p3, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 438
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v6

    .line 438
    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onReceiveShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;IZLcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 440
    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 8
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 432
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v6

    .line 432
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onReceiveShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;IZLcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 434
    return-void
.end method

.method public onReceiveShareLocationInChatMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V
    .locals 7
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "isGroupChat"    # Z

    .line 208
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 209
    .local v0, "midL":Ljava/lang/Long;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.rcs.framework.geolocationshare.action.RECEIVE_LOCATION_SHARE_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v2, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chat_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string/jumbo v2, "sessionId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 214
    const-string v2, "is_group_chat"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v2

    const-string/jumbo v3, "sessionDirection"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getSuggestion()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "suggestion":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 220
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "persistent"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 225
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 223
    :catch_0
    move-exception v3

    .line 224
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 226
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_0
    const-string v3, "extra_suggestion_text"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "maapTrafficType":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 231
    const-string v4, "maap_traffic_type"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->STANDALONE_MESSAGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    .line 235
    const-string v4, "is_bot"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    :cond_2
    invoke-direct {p0, v1, v6}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 238
    return-void
.end method

.method public onReceiveShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;IZLcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "requestAppId"    # Ljava/lang/String;
    .param p3, "mid"    # I
    .param p4, "success"    # Z
    .param p5, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .param p6, "mnoStrategy"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .param p7, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.RECEIVE_SHARE_LOCATION_IN_CHAT_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    nop

    .line 186
    if-nez p2, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 185
    :goto_0
    const-string/jumbo v3, "request_message_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 187
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    int-to-long v1, p3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 189
    if-eqz p5, :cond_2

    .line 190
    nop

    .line 191
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->getRequiredAction(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)I

    move-result v1

    .line 190
    const-string/jumbo v2, "required_action"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq v1, v2, :cond_1

    .line 193
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY_CFS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v1, v2, :cond_2

    .line 194
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FRAMEWORK_ERROR_FALLBACKFAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 195
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    const-string v2, "error_reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    :cond_2
    if-eqz p6, :cond_3

    if-eqz p7, :cond_3

    .line 200
    invoke-interface {p6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isDisplayWarnText()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 201
    invoke-virtual {p7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "warn_text"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 205
    return-void
.end method

.method public onRejectLocationShareInCallResponse(JZ)V
    .locals 2
    .param p1, "sessionid"    # J
    .param p3, "success"    # Z

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.REJECT_LOCATION_SHARE_INCALL_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 268
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 269
    return-void
.end method

.method public onShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "requestAppId"    # Ljava/lang/String;
    .param p3, "mid"    # I
    .param p4, "success"    # Z

    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.SHARE_LOCATION_IN_CHAT_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    nop

    .line 172
    if-nez p2, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 171
    :goto_0
    const-string/jumbo v3, "request_message_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 173
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    int-to-long v1, p3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 176
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 177
    return-void
.end method

.method public onStartLocationShareInCallResponse(JZ)V
    .locals 2
    .param p1, "sessionid"    # J
    .param p3, "success"    # Z

    .line 297
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 298
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.START_SHARE_LOCATION_INCALL_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 302
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 303
    return-void
.end method

.method public onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 403
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTransferCanceled: call onTransferCanceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 405
    return-void
.end method

.method public onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 397
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTransferCompleted: call onTransferCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 399
    return-void
.end method

.method public onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 388
    return-void
.end method

.method public onTransferStarted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 393
    return-void
.end method

.method public requestStartLocationShareInCall(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 160
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 161
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 162
    .local v1, "sessionId":J
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->startLocationShareInCall(J)V

    .line 163
    return-void
.end method
