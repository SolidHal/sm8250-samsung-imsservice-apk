.class public Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;
.super Ljava/lang/Object;
.source "TimeBasedUuidGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final SHAREDPREF_INSTANCE_ID_UUID_KEY:Ljava/lang/String; = "instanceIdUuid"

.field protected static final UUID_CORE_PATTERN:Ljava/lang/String; = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"

.field protected static final UUID_PURE_PATTERN:Ljava/util/regex/Pattern;

.field private static final UUID_STRIP:Ljava/util/regex/Pattern;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneId:I

.field private mUuidSource:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->LOG_TAG:Ljava/lang/String;

    .line 55
    const-string v0, "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->UUID_PURE_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    const-string v0, "(<)|(urn:uuid:)|(>)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->UUID_STRIP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mPhoneId:I

    .line 87
    iput-object p2, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method private compute100nsTimestamp()J
    .locals 10

    .line 149
    const-wide v0, 0x1b21dd213814000L

    .line 152
    .local v0, "init1970":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    .line 153
    .local v2, "current100ns":J
    sget-object v4, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compute100nsTimestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v6, 0x1b21dd213814000L

    add-long v8, v2, v6

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    add-long/2addr v6, v2

    return-wide v6
.end method

.method private generate()Ljava/lang/String;
    .locals 7

    .line 97
    invoke-direct {p0}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->compute100nsTimestamp()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->randSeq()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->getWifiMacAddr()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->generate(JJJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWifiMacAddr()J
    .locals 6

    .line 127
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 129
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v1, "000000000000"

    .line 130
    .local v1, "macAddr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 132
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiMacAddr: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method private obtainUuid()Ljava/lang/String;
    .locals 6

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getUuid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "uuid":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->UUID_STRIP:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    sget-object v1, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectUuidInstanceId from config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v1, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->UUID_PURE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    sget-object v1, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->AUTOCONFIG:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    iput-object v1, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mUuidSource:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    .line 210
    return-object v0

    .line 214
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mContext:Landroid/content/Context;

    const-string v4, "ims_user_data"

    const-string v5, "instanceIdUuid"

    invoke-static {v1, v3, v4, v5, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    sget-object v1, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectUuidInstanceId from sharedPref: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v1, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->SHAREDPREFS:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    iput-object v1, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mUuidSource:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    .line 222
    return-object v0

    .line 224
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "selectUuidInstanceId from sharedPref Empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->generate()Ljava/lang/String;

    move-result-object v0

    .line 228
    sget-object v1, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectUuidInstanceId from Generator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v1, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->GENERATOR:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    iput-object v1, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mUuidSource:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    .line 231
    return-object v0
.end method

.method private randSeq()J
    .locals 6

    .line 161
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 162
    .local v0, "seqGen":Ljava/security/SecureRandom;
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 163
    .local v1, "seqByte":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 164
    const/4 v2, 0x1

    aget-byte v2, v1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0x100

    mul-long/2addr v2, v4

    const/4 v4, 0x0

    aget-byte v4, v1, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 165
    .local v2, "seq":J
    const-wide/16 v4, 0x3fff

    and-long/2addr v2, v4

    .line 166
    return-wide v2
.end method


# virtual methods
.method protected generate(JJJ)Ljava/lang/String;
    .locals 18
    .param p1, "timeStamp"    # J
    .param p3, "clockSeq"    # J
    .param p5, "node"    # J

    .line 109
    const-wide v0, 0xffffffffL

    and-long v0, p1, v0

    .line 110
    .local v0, "timeLow":J
    const-wide v2, 0xffff00000000L

    and-long v2, p1, v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 111
    .local v2, "timeMid":J
    const-wide/high16 v5, 0xfff000000000000L

    and-long v5, p1, v5

    const/16 v7, 0x30

    ushr-long/2addr v5, v7

    .line 113
    .local v5, "timeHigh":J
    const-wide/16 v8, 0x1

    .line 114
    .local v8, "version":J
    const-wide/16 v10, 0x2

    .line 116
    .local v10, "variant":J
    shl-long v12, v0, v4

    const/16 v4, 0x10

    shl-long v14, v2, v4

    or-long/2addr v12, v14

    const/16 v4, 0xc

    shl-long v14, v8, v4

    or-long/2addr v12, v14

    or-long/2addr v12, v5

    .line 117
    .local v12, "mostSigBits":J
    const/16 v4, 0x3e

    shl-long v14, v10, v4

    shl-long v16, p3, v7

    or-long v14, v14, v16

    or-long v14, v14, p5

    .line 119
    .local v14, "leastSigBits":J
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v12, v13, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getUuidInstanceId()Ljava/lang/String;
    .locals 5

    .line 177
    invoke-direct {p0}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->obtainUuid()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "instanceId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mUuidSource:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    sget-object v2, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->GENERATOR:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    if-ne v1, v2, :cond_0

    .line 183
    iget v1, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mContext:Landroid/content/Context;

    const-string v3, "ims_user_data"

    const-string v4, "instanceIdUuid"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<urn:uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
