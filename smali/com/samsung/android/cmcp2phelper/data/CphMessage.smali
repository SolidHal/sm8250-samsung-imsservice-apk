.class public Lcom/samsung/android/cmcp2phelper/data/CphMessage;
.super Ljava/lang/Object;
.source "CphMessage.java"


# static fields
.field static final CPH_CMC_DEVICE_ID:Ljava/lang/String; = "cph_cmc_device_id"

.field static final CPH_CMC_LINE_ID:Ljava/lang/String; = "cph_cmc_line_id"

.field static final CPH_CMC_RESP_IP:Ljava/lang/String; = "cph_cmc_resp_ip"

.field static final CPH_CMC_RESP_PORT:Ljava/lang/String; = "cph_cmc_resp_port"

.field static final CPH_CMC_TIME:Ljava/lang/String; = "cph_cmc_time"

.field static final CPH_CMC_VERSION:Ljava/lang/String; = "cph_cmc_version"

.field static final CPH_MESSAGE_TYPE:Ljava/lang/String; = "cph_message_type"

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mCmcVersion:D

.field mDeviceId:Ljava/lang/String;

.field mLineId:Ljava/lang/String;

.field mMsgType:I

.field mResponderIP:Ljava/lang/String;

.field mResponderPort:I

.field message:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IDLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "messageType"    # I
    .param p2, "cmcVersion"    # D
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "lineId"    # Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    .line 116
    iput-wide p2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mCmcVersion:D

    .line 117
    iput-object p4, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->makeJsonObject()V

    .line 123
    return-void
.end method

.method public constructor <init>(IDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "messageType"    # I
    .param p2, "cmcVersion"    # D
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "impu"    # Ljava/lang/String;
    .param p6, "responderIP"    # Ljava/lang/String;
    .param p7, "responderPort"    # I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    .line 104
    iput-wide p2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mCmcVersion:D

    .line 105
    iput-object p4, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    .line 107
    iput-object p6, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    .line 108
    iput p7, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->makeJsonObject()V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "lineId"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    .line 92
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mCmcVersion:D

    .line 93
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->makeJsonObject()V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 4
    .param p1, "packet"    # Ljava/net/DatagramPacket;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 136
    .local v0, "recv":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new cphMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    .line 139
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json cphMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->parseFromJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v0    # "recv":Ljava/lang/String;
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 146
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "object"    # Lorg/json/JSONObject;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->parseFromJson(Lorg/json/JSONObject;)V

    .line 129
    return-void
.end method

.method private makeJsonObject()V
    .locals 4

    .line 175
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    .line 178
    :try_start_0
    const-string v1, "cph_message_type"

    iget v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 179
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_version"

    iget-wide v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mCmcVersion:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 180
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_device_id"

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_line_id"

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_resp_ip"

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    :cond_0
    iget v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_resp_port"

    iget v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_1
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 193
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private parseFromJson(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .line 152
    :try_start_0
    const-string v0, "cph_message_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    .line 153
    const-string v0, "cph_cmc_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mCmcVersion:D

    .line 154
    const-string v0, "cph_cmc_device_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    .line 155
    const-string v0, "cph_cmc_line_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    .line 156
    const-string v0, "cph_cmc_resp_ip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    .line 157
    const-string v0, "cph_cmc_resp_port"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 163
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method


# virtual methods
.method public getByte()[B
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCmcVersion()D
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mCmcVersion:D

    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    return v0
.end method

.method public getResponderIP()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    return-object v0
.end method

.method public getResponderPort()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public printMessage()V
    .locals 3

    .line 49
    sget-object v0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "print message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "log":Ljava/lang/String;
    const/4 v1, 0x0

    .line 38
    .local v1, "json4Log":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 39
    const-string v2, "cph_cmc_line_id"

    const-string/jumbo v3, "xxx"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 43
    goto :goto_0

    .line 41
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 44
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method
