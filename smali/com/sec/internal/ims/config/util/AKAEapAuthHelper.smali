.class public Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;
.super Ljava/lang/Object;
.source "AKAEapAuthHelper.java"


# static fields
.field private static final AT_AUTS_HEADER:Ljava/lang/String; = "0404"

.field private static final AT_MAC_HEADER:Ljava/lang/String; = "0B050000"

.field private static final AT_MAC_LENGTH:I = 0x14

.field private static final AT_MAC_WITH_ZEROED_VALUE:Ljava/lang/String; = "00000000000000000000000000000000"

.field private static final AT_RES:I = 0x3

.field private static final AT_RES_LENGTH_INDEX:I = 0x1

.field private static final AT_RES_RESLENGTH_INDEX:I = 0x3

.field private static final EAP_AUTN_HEADER_LENGTH:I = 0x8

.field private static final EAP_AUTN_LENGTH:I = 0x20

.field private static final EAP_FRAME_HEADER_CHALLENGE:Ljava/lang/String; = "0201002817010000"

.field private static final EAP_FRAME_HEADER_SYNC_FAILURE:Ljava/lang/String; = "0201002817040000"

.field private static final EAP_FRAME_IDENTIFIER_INDEX:I = 0x1

.field private static final EAP_FRAME_LEN_INDEX:I = 0x3

.field public static final EAP_JSON_TYPE:Ljava/lang/String; = "application/vnd.gsma.eap-relay.v1.0+json"

.field private static final EAP_RAND_LENGTH:I = 0x20

.field public static final EAP_RELAY_PACKET:Ljava/lang/String; = "eap-relay-packet"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NONCE_SEPARATOR:Ljava/lang/String; = "10"

.field public static final PARAM_EAP_ID:Ljava/lang/String; = "EAP_ID"

.field private static final START_INDEX_AUTN_IN_AKA_CHALLENGE:I = 0x40

.field private static final START_INDEX_RAND_IN_AKA_CHALLENGE:I = 0x18


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildAtResFrame(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "isimResponse"    # Ljava/lang/String;

    .line 222
    invoke-static {p0}, Lcom/sec/internal/ims/config/util/TelephonySupport;->buildAkaResponse(Ljava/lang/String;)Lcom/sec/internal/ims/config/util/AkaResponse;

    move-result-object v0

    .line 223
    .local v0, "akaResp":Lcom/sec/internal/ims/config/util/AkaResponse;
    if-nez v0, :cond_0

    .line 224
    sget-object v1, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "buildAtResFrame: failed ISimAuthentication"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v1, 0x0

    return-object v1

    .line 228
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/util/AkaResponse;->getRes()[B

    move-result-object v1

    .line 229
    .local v1, "res":[B
    if-eqz v1, :cond_1

    .line 230
    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "atRes":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v1

    invoke-static {v4}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->generateAtResHeader(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "atResFrame":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildAtResFrame: AT_RES Frame"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .end local v2    # "atRes":Ljava/lang/String;
    goto :goto_0

    .line 234
    .end local v3    # "atResFrame":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/util/AkaResponse;->getAuts()[B

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "auts":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0404"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .end local v2    # "auts":Ljava/lang/String;
    .restart local v3    # "atResFrame":Ljava/lang/String;
    :goto_0
    return-object v3
.end method

.method private static buildFinalEapFrame(Ljava/lang/String;Ljava/lang/String;B)Ljava/lang/String;
    .locals 10
    .param p0, "isimResponse"    # Ljava/lang/String;
    .param p1, "imsiEap"    # Ljava/lang/String;
    .param p2, "identifier"    # B

    .line 150
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 151
    sget-object v1, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "buildFinalEapFrame: cannot build final frame"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-object v0

    .line 154
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->buildAtResFrame(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "atResFrame":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 156
    sget-object v2, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildFinalEapFrame: cannot build final frame, atResFrame is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-object v0

    .line 160
    :cond_1
    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "buildFinalEapFrame calling for ISIM/USIM: EAP finalFrame "

    if-eqz v2, :cond_3

    .line 161
    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x0

    aget-byte v2, v2, v4

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 162
    invoke-static {p0, p1}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->buildK_AutnForAtMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "kAutn":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildFinalEapFrame: K_AUT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-nez v2, :cond_2

    .line 169
    sget-object v3, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "buildFinalEapFrame: K_AUT is null. Can not calculate final EAP frame"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-object v0

    .line 173
    :cond_2
    const-string v0, "0B05000000000000000000000000000000000000"

    .line 174
    .local v0, "zeroedMac":Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, p2}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->getResFrameHeader([BB)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "eapFrameHeader":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "eapFrameWithZeroedMac":Ljava/lang/String;
    sget-object v6, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildFinalEapFrame: resultWithZeroedMac "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v6, ""

    .line 181
    .local v6, "atMacValue":Ljava/lang/String;
    nop

    .line 182
    :try_start_0
    invoke-static {v5}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 183
    invoke-static {v2}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 181
    invoke-static {v7, v8}, Lcom/sec/internal/ims/config/util/HmacSha1Signature;->calculateRFC2104HMAC([B[B)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 184
    sget-object v7, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildFinalEapFrame calling for ISIM/USIM: AT_MAC "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_0

    .line 187
    :catch_0
    move-exception v7

    .line 189
    .local v7, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v7}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 196
    .end local v7    # "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "0B050000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "eapFinalFrame":Ljava/lang/String;
    sget-object v8, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-object v7

    .line 203
    .end local v0    # "zeroedMac":Ljava/lang/String;
    .end local v2    # "kAutn":Ljava/lang/String;
    .end local v4    # "eapFrameHeader":Ljava/lang/String;
    .end local v5    # "eapFrameWithZeroedMac":Ljava/lang/String;
    .end local v6    # "atMacValue":Ljava/lang/String;
    .end local v7    # "eapFinalFrame":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->getAutSFrameHeader([BB)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "eapFrameHeader":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static buildK_AutnForAtMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "isimResponse"    # Ljava/lang/String;
    .param p1, "imsiEap"    # Ljava/lang/String;

    .line 247
    invoke-static {p1, p0}, Lcom/sec/internal/ims/config/util/TelephonySupport;->buildMainKey(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 249
    .local v0, "mainKeyBytes":[B
    if-nez v0, :cond_0

    .line 250
    sget-object v1, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "buildK_AutnForAtMac: key null, vail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v1, 0x0

    return-object v1

    .line 253
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/config/util/SHA1;

    invoke-direct {v1}, Lcom/sec/internal/ims/config/util/SHA1;-><init>()V

    .line 254
    .local v1, "sha1":Lcom/sec/internal/ims/config/util/SHA1;
    const/16 v2, 0x14

    new-array v2, v2, [B

    .line 255
    .local v2, "mainKeyBytesWithSha1":[B
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/util/SHA1;->update([B)V

    .line 256
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/util/SHA1;->digest([B)V

    .line 257
    sget-object v3, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Main Key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-static {v2}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/16 v3, 0xa0

    new-array v3, v3, [B

    .line 262
    .local v3, "out":[B
    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/util/Fips186_2;->fips186_2_prf2([B[B)I

    .line 264
    sget-object v4, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRF OUTPUT with main key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {v3}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {v3}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "msk":Ljava/lang/String;
    const/16 v5, 0x20

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static composeRootNai(I)Ljava/lang/String;
    .locals 9
    .param p0, "phoneId"    # I

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v0, "nai":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 276
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const-string v2, ""

    if-nez v1, :cond_0

    .line 277
    return-object v2

    .line 279
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "imsi":Ljava/lang/String;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "operator":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 282
    sget-object v5, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    const-string v6, "composeRootNai, operator empty"

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-object v2

    .line 286
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x3

    if-ne v5, v7, :cond_2

    .line 287
    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "mcc":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "mnc":Ljava/lang/String;
    goto :goto_0

    .line 289
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v5    # "mnc":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x6

    if-ne v5, v7, :cond_4

    .line 290
    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 291
    .restart local v2    # "mcc":Ljava/lang/String;
    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 296
    .restart local v5    # "mnc":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_3

    .line 297
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "@nai.epc.mnc"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v6, ".mcc"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".3gppnetwork.org"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 293
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v5    # "mnc":Ljava/lang/String;
    :cond_4
    sget-object v5, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    const-string v6, "composeRootNai, wrong operator"

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-object v2
.end method

.method public static decodeChallenge(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "akaChallenge"    # Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 54
    .local v0, "challengeByte":[B
    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "encodedChallenge":Ljava/lang/String;
    return-object v1
.end method

.method private static generateAtResHeader(I)Ljava/lang/String;
    .locals 3
    .param p0, "resLen"    # I

    .line 210
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 211
    .local v1, "atResHeader":[B
    array-length v2, v1

    add-int/2addr v2, p0

    div-int/2addr v2, v0

    int-to-byte v0, v2

    const/4 v2, 0x1

    aput-byte v0, v1, v2

    .line 212
    mul-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    .line 213
    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x3t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static generateChallengeResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "akaChallenge"    # Ljava/lang/String;
    .param p1, "isimResponse"    # Ljava/lang/String;
    .param p2, "imsiEap"    # Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "generateChallengeResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 70
    const/16 v2, 0x18

    const/16 v3, 0x38

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 74
    const/16 v2, 0x40

    const/16 v4, 0x60

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 79
    .local v1, "parts":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "10"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "nonce":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateChallengeResponse: _org "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v5, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateChallengeResponse: _all "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v5, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateChallengeResponse: rand "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v3, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateChallengeResponse: autn "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    nop

    .line 87
    invoke-static {p0}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    aget-byte v3, v3, v4

    .line 86
    invoke-static {p1, p2, v3}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->buildFinalEapFrame(Ljava/lang/String;Ljava/lang/String;B)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "eapFinalFrame":Ljava/lang/String;
    if-eqz p1, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    nop

    .line 95
    invoke-static {v3}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 94
    invoke-static {v4, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "encodedEapFinalFrame":Ljava/lang/String;
    return-object v0

    .line 90
    .end local v0    # "encodedEapFinalFrame":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "generateChallengeResponse: ISIM/USIM Auth failed"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getAutSFrameHeader([BB)Ljava/lang/String;
    .locals 4
    .param p0, "atAutSFrame"    # [B
    .param p1, "identifier"    # B

    .line 132
    const-string v0, "0201002817040000"

    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 133
    .local v0, "eapFrameHeader":[B
    if-nez v0, :cond_0

    .line 134
    const/4 v1, 0x0

    return-object v1

    .line 136
    :cond_0
    const/4 v1, 0x3

    array-length v2, v0

    .line 137
    if-eqz p0, :cond_1

    array-length v3, p0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 138
    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 140
    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNonce(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "akaChallenge"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 103
    const/16 v1, 0x18

    const/16 v2, 0x38

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 107
    const/16 v1, 0x40

    const/16 v3, 0x60

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 112
    .local v0, "parts":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "10"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "nonce":Ljava/lang/String;
    return-object v1
.end method

.method private static getResFrameHeader([BB)Ljava/lang/String;
    .locals 5
    .param p0, "atResFrame"    # [B
    .param p1, "identifier"    # B

    .line 118
    const-string v0, "0201002817010000"

    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 119
    .local v0, "eapFrameHeader":[B
    if-nez v0, :cond_0

    .line 120
    const/4 v1, 0x0

    return-object v1

    .line 122
    :cond_0
    const/4 v1, 0x3

    array-length v2, v0

    .line 123
    const/16 v3, 0x14

    if-eqz p0, :cond_1

    array-length v4, p0

    add-int/2addr v3, v4

    :cond_1
    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 124
    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 126
    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
