.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;
.super Ljava/lang/Object;
.source "PresenceSharedPrefHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PresenceSharedPrefHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "presenceModule"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 22
    return-void
.end method

.method private getPresenceSharedPreferences(I)Landroid/content/SharedPreferences;
    .locals 3
    .param p1, "phoneId"    # I

    .line 25
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "presence_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private load(Ljava/lang/String;JI)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "phoneId"    # I

    .line 48
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->getPresenceSharedPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private load(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 43
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->getPresenceSharedPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private save(Ljava/lang/String;Ljava/lang/Long;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;
    .param p3, "phoneId"    # I

    .line 36
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->getPresenceSharedPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 38
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    return-void
.end method

.method private save(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 29
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->getPresenceSharedPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 31
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    return-void
.end method


# virtual methods
.method checkAndClearPresencePreferences(Ljava/lang/String;I)V
    .locals 7
    .param p1, "phoneIdImsi"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 144
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->getPresenceSharedPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "imsi"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "imsi":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    return-void

    .line 150
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 151
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "publish_etag"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string/jumbo v4, "publish_expire_timer"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v3, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string/jumbo v1, "publish_timeout"

    invoke-interface {v3, v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v1, "BadEventTimestamp"

    invoke-interface {v3, v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    return-void
.end method

.method checkIfValidEtag(I)Z
    .locals 14
    .param p1, "phoneId"    # I

    .line 116
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->getPresenceSharedPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "imsi"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "imsi":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "newImsi":Ljava/lang/String;
    const-string/jumbo v3, "publish_expire_timer"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 120
    .local v6, "expireTimer":J
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadPublishTimestamp(I)J

    move-result-wide v8

    .line 122
    .local v8, "publishTimer":J
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v3

    iget-wide v10, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    cmp-long v3, v10, v4

    if-lez v3, :cond_1

    .line 124
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v3

    iget-wide v8, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    .line 125
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v3

    iput-wide v4, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    goto :goto_0

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v10, :cond_1

    .line 128
    cmp-long v3, v8, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v3

    iget-wide v10, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    cmp-long v3, v10, v4

    if-lez v3, :cond_1

    .line 129
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v3

    iget-wide v8, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    .line 130
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v3

    iput-wide v4, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    .line 134
    :cond_1
    :goto_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 135
    .local v3, "currentTime":Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfValidEtag: currentTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " publishTimer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " expireTimer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " currentTime-publishTimer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    const-string v5, "PresenceSharedPrefHelper"

    invoke-static {v5, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v8

    div-long/2addr v4, v12

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 140
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 139
    :goto_1
    return v4
.end method

.method getPublishETag(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .line 102
    const-string/jumbo v0, "publish_etag"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->load(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loadBadEventTimestamp(I)J
    .locals 7
    .param p1, "phoneId"    # I

    .line 66
    const-string v0, "BadEventTimestamp"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->load(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 67
    .local v3, "lastBadEventTimestamp":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 68
    .local v0, "current":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadBadEventTimestamp: abnormal case, clear lastBadEventTimestamp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " to 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PresenceSharedPrefHelper"

    invoke-static {v6, p1, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    invoke-virtual {p0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveBadEventTimestamp(JI)V

    .line 71
    return-wide v1

    .line 73
    :cond_0
    return-wide v3
.end method

.method loadPublishTimestamp(I)J
    .locals 7
    .param p1, "phoneId"    # I

    .line 83
    const-string/jumbo v0, "publish_timeout"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->load(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 84
    .local v3, "lastPublishTimestamp":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 85
    .local v0, "current":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadPublishTimestamp: abnormal case, clear lastPublishTimestamp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " to 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PresenceSharedPrefHelper"

    invoke-static {v6, p1, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    invoke-virtual {p0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 88
    return-wide v1

    .line 90
    :cond_0
    return-wide v3
.end method

.method loadRandomTupleId(JI)Ljava/lang/String;
    .locals 2
    .param p1, "feature"    # J
    .param p3, "phoneId"    # I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tupleId_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->load(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method resetPublishEtag(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 106
    const-string v0, "PresenceSharedPrefHelper"

    const-string/jumbo v1, "resetPublishEtag"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->getPresenceSharedPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 110
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "publish_etag"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    const-string/jumbo v2, "publish_expire_timer"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    return-void
.end method

.method saveBadEventTimestamp(JI)V
    .locals 2
    .param p1, "timestamp"    # J
    .param p3, "phoneId"    # I

    .line 61
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "BadEventTimestamp"

    invoke-direct {p0, v1, v0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->save(Ljava/lang/String;Ljava/lang/Long;I)V

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v0

    iput-wide p1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastBadEventTimestamp:J

    .line 63
    return-void
.end method

.method savePublishETag(Ljava/lang/String;JI)V
    .locals 3
    .param p1, "eTag"    # Ljava/lang/String;
    .param p2, "expireTimer"    # J
    .param p4, "phoneId"    # I

    .line 94
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->getPresenceSharedPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 96
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "publish_etag"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string/jumbo v2, "publish_expire_timer"

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    return-void
.end method

.method savePublishTimestamp(JI)V
    .locals 2
    .param p1, "timestamp"    # J
    .param p3, "phoneId"    # I

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "savePublishTimestamp: publish_timeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceSharedPrefHelper"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "publish_timeout"

    invoke-direct {p0, v1, v0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->save(Ljava/lang/String;Ljava/lang/Long;I)V

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v0

    iput-wide p1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    .line 80
    return-void
.end method

.method saveRandomTupleId(JLjava/lang/String;I)V
    .locals 2
    .param p1, "feature"    # J
    .param p3, "tupleId"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tupleId_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->save(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    return-void
.end method
