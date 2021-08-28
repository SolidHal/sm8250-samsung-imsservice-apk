.class public Lcom/sec/internal/log/EncryptedLogger;
.super Ljava/lang/Object;
.source "EncryptedLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;
    }
.end annotation


# static fields
.field private static final B64PublicKey:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4HnSCdRy3WviYMvfRDtEcLAQU3Mi3et4f9W0ivmrMc1B+5LUEoWbrb6Rb5IKf7BI7qRflHKOfn1a9R1pYEBaBnrNrQHuIOhG4b3zYkAU+i093wKtE/dLvpa+NOEAfn/HMO0qVdRjdVs9FaJWYbjRNeiZC3PIX8bLFwqgOLwe70HOi9V7vcrrUyhJTMfXz77Zm1bbCMtU2R7UJUnI0b2fQyKdIhYgZiKChmfHH395939x2yQd8ZFYPGbmB+Zq4mCivEZSSaNZ6h9r6YYdoFSmgLVM1upBvt3kEpOE91TWbtIS4nLBWvLIfZTW4MA77BltW7mtkO61ZepLqkdj0eFoXQIDAQAB"

.field private static ENCRYPTED_LOGGER_ENTRY_MAX_PAYLOAD:I = 0x0

.field private static ENCRYPTED_LOGGER_LINE_MAX_PAYLOAD:I = 0x0

.field private static final KEY_POSTFIX:Ljava/lang/String; = "\u205d\u275c"

.field private static final KEY_PREFIX:Ljava/lang/String; = "\u275b\u205d"

.field private static final LOG_MIDFIX:Ljava/lang/String; = "\u2550\u2550"

.field private static final LOG_POSTFIX:Ljava/lang/String; = "\u2550\u255d"

.field private static final LOG_PREFIX:Ljava/lang/String; = "\u2554\u2550"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PublicKeyId:Ljava/lang/String; = "R001"

.field private static singleInstance:Lcom/sec/internal/log/EncryptedLogger;


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private iv:[B

.field private secretKey:Ljavax/crypto/SecretKey;

.field private silentLogWatcher:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/sec/internal/log/EncryptedLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/log/EncryptedLogger;->LOG_TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/log/EncryptedLogger;->singleInstance:Lcom/sec/internal/log/EncryptedLogger;

    .line 45
    const/16 v0, 0x640

    sput v0, Lcom/sec/internal/log/EncryptedLogger;->ENCRYPTED_LOGGER_LINE_MAX_PAYLOAD:I

    .line 46
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/internal/log/EncryptedLogger;->ENCRYPTED_LOGGER_ENTRY_MAX_PAYLOAD:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/log/EncryptedLogger;->secretKey:Ljavax/crypto/SecretKey;

    .line 49
    iput-object v0, p0, Lcom/sec/internal/log/EncryptedLogger;->iv:[B

    .line 50
    iput-object v0, p0, Lcom/sec/internal/log/EncryptedLogger;->cipher:Ljavax/crypto/Cipher;

    .line 65
    invoke-direct {p0}, Lcom/sec/internal/log/EncryptedLogger;->initCipher()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/log/EncryptedLogger;)Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/log/EncryptedLogger;

    .line 23
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger;->silentLogWatcher:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/internal/log/EncryptedLogger;Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/log/EncryptedLogger;
    .param p1, "x1"    # Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    .line 23
    iput-object p1, p0, Lcom/sec/internal/log/EncryptedLogger;->silentLogWatcher:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/sec/internal/log/EncryptedLogger;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/log/EncryptedLogger;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/log/EncryptedLogger;

    .line 23
    invoke-direct {p0}, Lcom/sec/internal/log/EncryptedLogger;->writeSecretKeyToLogcat()V

    return-void
.end method

.method private concatBytes([B[B)[B
    .locals 4
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .line 214
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 215
    .local v0, "c":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    array-length v1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    return-object v0
.end method

.method private encryptAES(Ljava/lang/String;)[B
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 171
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 172
    .local v0, "msgBytes":[B
    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .local v1, "encryption":[B
    return-object v1

    .line 175
    .end local v0    # "msgBytes":[B
    .end local v1    # "encryption":[B
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/log/EncryptedLogger;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    return-object v0
.end method

.method private encryptRSA([B)[B
    .locals 4
    .param p1, "source"    # [B

    .line 184
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4HnSCdRy3WviYMvfRDtEcLAQU3Mi3et4f9W0ivmrMc1B+5LUEoWbrb6Rb5IKf7BI7qRflHKOfn1a9R1pYEBaBnrNrQHuIOhG4b3zYkAU+i093wKtE/dLvpa+NOEAfn/HMO0qVdRjdVs9FaJWYbjRNeiZC3PIX8bLFwqgOLwe70HOi9V7vcrrUyhJTMfXz77Zm1bbCMtU2R7UJUnI0b2fQyKdIhYgZiKChmfHH395939x2yQd8ZFYPGbmB+Zq4mCivEZSSaNZ6h9r6YYdoFSmgLVM1upBvt3kEpOE91TWbtIS4nLBWvLIfZTW4MA77BltW7mtkO61ZepLqkdj0eFoXQIDAQAB"

    invoke-direct {p0, v1}, Lcom/sec/internal/log/EncryptedLogger;->transformPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    .line 185
    .local v1, "publicKey":Ljava/security/PublicKey;
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 186
    .local v2, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 187
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .local v0, "bytePlain":[B
    return-object v0

    .line 190
    .end local v0    # "bytePlain":[B
    .end local v1    # "publicKey":Ljava/security/PublicKey;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/internal/log/EncryptedLogger;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v1    # "e":Ljava/lang/Exception;
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/internal/log/EncryptedLogger;
    .locals 2

    const-class v0, Lcom/sec/internal/log/EncryptedLogger;

    monitor-enter v0

    .line 55
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    sget-object v1, Lcom/sec/internal/log/EncryptedLogger;->singleInstance:Lcom/sec/internal/log/EncryptedLogger;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/sec/internal/log/EncryptedLogger;

    invoke-direct {v1}, Lcom/sec/internal/log/EncryptedLogger;-><init>()V

    sput-object v1, Lcom/sec/internal/log/EncryptedLogger;->singleInstance:Lcom/sec/internal/log/EncryptedLogger;

    .line 59
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    sget-object v1, Lcom/sec/internal/log/EncryptedLogger;->singleInstance:Lcom/sec/internal/log/EncryptedLogger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    .line 59
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initCipher()V
    .locals 5

    .line 70
    :try_start_0
    sget-object v0, Lcom/sec/internal/log/EncryptedLogger;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initCipher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 73
    .local v0, "generator":Ljavax/crypto/KeyGenerator;
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    .line 74
    .local v1, "random":Ljava/security/SecureRandom;
    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 76
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/log/EncryptedLogger;->secretKey:Ljavax/crypto/SecretKey;

    .line 77
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/log/EncryptedLogger;->cipher:Ljavax/crypto/Cipher;

    .line 78
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/internal/log/EncryptedLogger;->secretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 79
    iget-object v2, p0, Lcom/sec/internal/log/EncryptedLogger;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/log/EncryptedLogger;->iv:[B

    .line 81
    invoke-direct {p0}, Lcom/sec/internal/log/EncryptedLogger;->writeSecretKeyToLogcat()V

    .line 82
    invoke-direct {p0}, Lcom/sec/internal/log/EncryptedLogger;->writeSecretKeyToCriticalLog()V

    .line 84
    invoke-virtual {p0}, Lcom/sec/internal/log/EncryptedLogger;->startSilentLogWatcher()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "generator":Ljavax/crypto/KeyGenerator;
    .end local v1    # "random":Ljava/security/SecureRandom;
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/log/EncryptedLogger;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private makeEncryptMessagePackage(Ljava/lang/String;ZJ)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "useMid"    # Z
    .param p3, "encryptionNanoTime"    # J

    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u2554\u2550 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    if-eqz p2, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    if-eqz p2, :cond_1

    const-string/jumbo v1, "\u2550\u2550"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "\u2550\u255d"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private transformPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p1, "stringPublicKey"    # Ljava/lang/String;

    .line 199
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 200
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object v1

    .line 201
    .local v1, "bytePublicKey":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 203
    .local v2, "publicKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .local v3, "publicKey":Ljava/security/PublicKey;
    return-object v3

    .line 206
    .end local v0    # "keyFactory":Ljava/security/KeyFactory;
    .end local v1    # "bytePublicKey":[B
    .end local v2    # "publicKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/log/EncryptedLogger;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private writeLog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "messagePackage"    # Ljava/lang/String;
    .param p3, "logLevel"    # I

    .line 139
    const/4 v0, 0x2

    if-eq p3, v0, :cond_4

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_2

    const/4 v0, 0x5

    if-eq p3, v0, :cond_1

    const/4 v0, 0x6

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    goto :goto_0

    .line 147
    :cond_2
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    goto :goto_0

    .line 144
    :cond_3
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    goto :goto_0

    .line 141
    :cond_4
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    nop

    .line 156
    :goto_0
    return-void
.end method

.method private writeSecretKeyToCriticalLog()V
    .locals 5

    .line 226
    invoke-virtual {p0}, Lcom/sec/internal/log/EncryptedLogger;->getBase64EncodedSecretKey()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "secretKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 228
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 229
    const v3, -0xffffffe

    add-int/lit8 v4, v2, 0x32

    if-ge v4, v1, :cond_0

    add-int/lit8 v4, v2, 0x32

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 228
    add-int/lit8 v2, v2, 0x32

    goto :goto_0

    .line 231
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private writeSecretKeyToLogcat()V
    .locals 2

    .line 222
    sget-object v0, Lcom/sec/internal/log/EncryptedLogger;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/internal/log/EncryptedLogger;->getBase64EncodedSecretKeyWithDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method


# virtual methods
.method public _debug_GetSecretKeyInfo()Ljava/lang/String;
    .locals 3

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/log/EncryptedLogger;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/log/EncryptedLogger;->iv:[B

    invoke-virtual {v1, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "logLevel"    # I

    .line 113
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 114
    .local v0, "startNano":J
    invoke-direct {p0, p2}, Lcom/sec/internal/log/EncryptedLogger;->encryptAES(Ljava/lang/String;)[B

    move-result-object v2

    .line 115
    .local v2, "encryptedLogBytes":[B
    sget v3, Lcom/sec/internal/log/EncryptedLogger;->ENCRYPTED_LOGGER_LINE_MAX_PAYLOAD:I

    const-string v4, "\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Base64;->getMimeEncoder(I[B)Ljava/util/Base64$Encoder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "base64EncryptedLog":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 118
    .local v4, "durationNano":J
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 120
    .local v6, "length":I
    sget v7, Lcom/sec/internal/log/EncryptedLogger;->ENCRYPTED_LOGGER_ENTRY_MAX_PAYLOAD:I

    const/4 v8, 0x0

    if-le v6, v7, :cond_2

    .line 121
    const/4 v7, 0x0

    .line 122
    .local v7, "from":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 123
    sget v9, Lcom/sec/internal/log/EncryptedLogger;->ENCRYPTED_LOGGER_ENTRY_MAX_PAYLOAD:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 124
    .local v9, "num":I
    add-int v10, v7, v9

    move v11, v10

    .end local v7    # "from":I
    .local v11, "from":I
    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "subString":Ljava/lang/String;
    if-ge v11, v6, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    move v10, v8

    :goto_1
    invoke-direct {p0, v7, v10, v4, v5}, Lcom/sec/internal/log/EncryptedLogger;->makeEncryptMessagePackage(Ljava/lang/String;ZJ)Ljava/lang/String;

    move-result-object v10

    .line 127
    .local v10, "messagePackage":Ljava/lang/String;
    invoke-direct {p0, p1, v10, p3}, Lcom/sec/internal/log/EncryptedLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    .end local v7    # "subString":Ljava/lang/String;
    .end local v10    # "messagePackage":Ljava/lang/String;
    move v7, v11

    goto :goto_0

    .line 129
    .end local v9    # "num":I
    .end local v11    # "from":I
    .local v7, "from":I
    :cond_1
    invoke-direct {p0, v3, v8, v4, v5}, Lcom/sec/internal/log/EncryptedLogger;->makeEncryptMessagePackage(Ljava/lang/String;ZJ)Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "returnMessage":Ljava/lang/String;
    goto :goto_2

    .line 131
    .end local v7    # "returnMessage":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v3, v8, v4, v5}, Lcom/sec/internal/log/EncryptedLogger;->makeEncryptMessagePackage(Ljava/lang/String;ZJ)Ljava/lang/String;

    move-result-object v7

    .line 132
    .restart local v7    # "returnMessage":Ljava/lang/String;
    invoke-direct {p0, p1, v7, p3}, Lcom/sec/internal/log/EncryptedLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    :goto_2
    return-object v7
.end method

.method public getBase64EncodedSecretKey()Ljava/lang/String;
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger;->secretKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger;->iv:[B

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/log/EncryptedLogger;->concatBytes([B[B)[B

    move-result-object v0

    .line 93
    .local v0, "secretKeyInfoBytes":[B
    invoke-direct {p0, v0}, Lcom/sec/internal/log/EncryptedLogger;->encryptRSA([B)[B

    move-result-object v1

    .line 94
    .local v1, "rsaEncryptedSecretKeyInfoBytes":[B
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    const-string v3, "R001"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/sec/internal/log/EncryptedLogger;->concatBytes([B[B)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "encodedSecretKeyInfo":Ljava/lang/String;
    return-object v2

    .line 99
    .end local v0    # "secretKeyInfoBytes":[B
    .end local v1    # "rsaEncryptedSecretKeyInfoBytes":[B
    .end local v2    # "encodedSecretKeyInfo":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBase64EncodedSecretKeyWithDelimiter()Ljava/lang/String;
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger;->secretKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u275b\u205d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/log/EncryptedLogger;->getBase64EncodedSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u205d\u275c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public startSilentLogWatcher()V
    .locals 1

    .line 238
    new-instance v0, Lcom/sec/internal/log/EncryptedLogger$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/log/EncryptedLogger$1;-><init>(Lcom/sec/internal/log/EncryptedLogger;)V

    .line 259
    invoke-virtual {v0}, Lcom/sec/internal/log/EncryptedLogger$1;->start()V

    .line 260
    return-void
.end method
