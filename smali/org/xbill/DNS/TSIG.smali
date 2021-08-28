.class public Lorg/xbill/DNS/TSIG;
.super Ljava/lang/Object;
.source "TSIG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/TSIG$StreamVerifier;
    }
.end annotation


# static fields
.field public static final FUDGE:S = 0x12cs

.field public static final HMAC:Lorg/xbill/DNS/Name;

.field public static final HMAC_MD5:Lorg/xbill/DNS/Name;

.field public static final HMAC_SHA1:Lorg/xbill/DNS/Name;

.field public static final HMAC_SHA224:Lorg/xbill/DNS/Name;

.field public static final HMAC_SHA256:Lorg/xbill/DNS/Name;

.field public static final HMAC_SHA384:Lorg/xbill/DNS/Name;

.field public static final HMAC_SHA512:Lorg/xbill/DNS/Name;

.field private static algMap:Ljava/util/Map;


# instance fields
.field private alg:Lorg/xbill/DNS/Name;

.field private hmac:Ljavax/crypto/Mac;

.field private name:Lorg/xbill/DNS/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    nop

    .line 24
    const-string v0, "HMAC-MD5.SIG-ALG.REG.INT."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    .line 27
    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC:Lorg/xbill/DNS/Name;

    .line 30
    const-string v0, "hmac-sha1."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    .line 37
    const-string v0, "hmac-sha224."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA224:Lorg/xbill/DNS/Name;

    .line 40
    const-string v0, "hmac-sha256."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    .line 43
    const-string v0, "hmac-sha384."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA384:Lorg/xbill/DNS/Name;

    .line 46
    const-string v0, "hmac-sha512."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA512:Lorg/xbill/DNS/Name;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v0, "out":Ljava/util/Map;
    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    const-string v2, "HmacMD5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    const-string v2, "HmacSHA1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA224:Lorg/xbill/DNS/Name;

    const-string v2, "HmacSHA224"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    const-string v2, "HmacSHA256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA384:Lorg/xbill/DNS/Name;

    const-string v2, "HmacSHA384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA512:Lorg/xbill/DNS/Name;

    const-string v2, "HmacSHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/TSIG;->algMap:Ljava/util/Map;

    .line 59
    .end local v0    # "out":Ljava/util/Map;
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 235
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .line 222
    invoke-static {p1}, Lorg/xbill/DNS/TSIG;->algorithmToName(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;Lorg/xbill/DNS/Name;)V
    .locals 1
    .param p1, "mac"    # Ljavax/crypto/Mac;
    .param p2, "name"    # Lorg/xbill/DNS/Name;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    .line 172
    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    .line 173
    invoke-virtual {p1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/TSIG;->algorithmToName(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 174
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "algorithm"    # Lorg/xbill/DNS/Name;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-static {p3}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 197
    .local v0, "keyBytes":[B
    if-eqz v0, :cond_0

    .line 200
    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p2, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    nop

    .line 205
    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 206
    invoke-static {p1}, Lorg/xbill/DNS/TSIG;->nameToAlgorithm(Lorg/xbill/DNS/Name;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "macAlgorithm":Ljava/lang/String;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/TSIG;->init_hmac(Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 208
    return-void

    .line 202
    .end local v1    # "macAlgorithm":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid TSIG key name"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    .end local v1    # "e":Lorg/xbill/DNS/TextParseException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid TSIG key string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljavax/crypto/SecretKey;)V
    .locals 1
    .param p1, "algorithm"    # Lorg/xbill/DNS/Name;
    .param p2, "name"    # Lorg/xbill/DNS/Name;
    .param p3, "key"    # Ljavax/crypto/SecretKey;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    .line 157
    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 158
    invoke-static {p1}, Lorg/xbill/DNS/TSIG;->nameToAlgorithm(Lorg/xbill/DNS/Name;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "macAlgorithm":Ljava/lang/String;
    invoke-direct {p0, v0, p3}, Lorg/xbill/DNS/TSIG;->init_hmac(Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V
    .locals 2
    .param p1, "algorithm"    # Lorg/xbill/DNS/Name;
    .param p2, "name"    # Lorg/xbill/DNS/Name;
    .param p3, "keyBytes"    # [B

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    .line 142
    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 143
    invoke-static {p1}, Lorg/xbill/DNS/TSIG;->nameToAlgorithm(Lorg/xbill/DNS/Name;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "macAlgorithm":Ljava/lang/String;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 145
    .local v1, "key":Ljavax/crypto/SecretKey;
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/TSIG;->init_hmac(Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;[B)V
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "key"    # [B

    .line 184
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V

    .line 185
    return-void
.end method

.method static synthetic access$000(Lorg/xbill/DNS/TSIG;)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/TSIG;

    .line 20
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/TSIG;

    .line 20
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method static synthetic access$200(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/TSIG;

    .line 20
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method static synthetic access$300(Ljavax/crypto/Mac;[B)Z
    .locals 1
    .param p0, "x0"    # Ljavax/crypto/Mac;
    .param p1, "x1"    # [B

    .line 20
    invoke-static {p0, p1}, Lorg/xbill/DNS/TSIG;->verify(Ljavax/crypto/Mac;[B)Z

    move-result v0

    return v0
.end method

.method public static algorithmToName(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 3
    .param p0, "alg"    # Ljava/lang/String;

    .line 64
    sget-object v0, Lorg/xbill/DNS/TSIG;->algMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 65
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 67
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Name;

    return-object v2

    .line 69
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_0
    goto :goto_0

    .line 70
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown algorithm"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromString(Ljava/lang/String;)Lorg/xbill/DNS/TSIG;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .line 250
    const-string v0, "[:/]"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 254
    array-length v3, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v1, :cond_0

    .line 256
    :try_start_0
    new-instance v1, Lorg/xbill/DNS/TSIG;

    aget-object v3, v2, v6

    aget-object v7, v2, v5

    aget-object v8, v2, v4

    invoke-direct {v1, v3, v7, v8}, Lorg/xbill/DNS/TSIG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 261
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v0, Lorg/xbill/DNS/TSIG;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    aget-object v3, v2, v6

    aget-object v4, v2, v5

    invoke-direct {v0, v1, v3, v4}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 252
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TSIG key specification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init_hmac(Ljava/lang/String;Ljavax/crypto/SecretKey;)V
    .locals 3
    .param p1, "macAlgorithm"    # Ljava/lang/String;
    .param p2, "key"    # Ljavax/crypto/SecretKey;

    .line 123
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    .line 124
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .line 131
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Caught security exception setting up HMAC."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static nameToAlgorithm(Lorg/xbill/DNS/Name;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Lorg/xbill/DNS/Name;

    .line 75
    sget-object v0, Lorg/xbill/DNS/TSIG;->algMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, "alg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 77
    return-object v0

    .line 78
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown algorithm"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static verify(Ljavax/crypto/Mac;[B)Z
    .locals 1
    .param p0, "mac"    # Ljavax/crypto/Mac;
    .param p1, "signature"    # [B

    .line 98
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/xbill/DNS/TSIG;->verify(Ljavax/crypto/Mac;[BZ)Z

    move-result v0

    return v0
.end method

.method private static verify(Ljavax/crypto/Mac;[BZ)Z
    .locals 4
    .param p0, "mac"    # Ljavax/crypto/Mac;
    .param p1, "signature"    # [B
    .param p2, "truncation_ok"    # Z

    .line 111
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 112
    .local v0, "expected":[B
    if-eqz p2, :cond_0

    array-length v1, p1

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 113
    array-length v1, p1

    new-array v1, v1, [B

    .line 114
    .local v1, "truncated":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    move-object v0, v1

    .line 117
    .end local v1    # "truncated":[B
    :cond_0
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V
    .locals 2
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "error"    # I
    .param p3, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .line 352
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    .line 353
    .local v0, "r":Lorg/xbill/DNS/Record;
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 354
    iput v1, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 355
    return-void
.end method

.method public apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 1
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V

    .line 365
    return-void
.end method

.method public applyStream(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;Z)V
    .locals 25
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "old"    # Lorg/xbill/DNS/TSIGRecord;
    .param p3, "first"    # Z

    .line 374
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p3, :cond_0

    .line 375
    invoke-virtual/range {p0 .. p2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V

    .line 376
    return-void

    .line 378
    :cond_0
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 380
    .local v8, "timeSigned":Ljava/util/Date;
    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->reset()V

    .line 382
    const-string/jumbo v2, "tsigfudge"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v2

    .line 383
    .local v2, "fudge":I
    if-ltz v2, :cond_2

    const/16 v3, 0x7fff

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v14, v2

    goto :goto_1

    .line 384
    :cond_2
    :goto_0
    const/16 v2, 0x12c

    move v14, v2

    .line 386
    .end local v2    # "fudge":I
    .local v14, "fudge":I
    :goto_1
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 387
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 388
    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->update([B)V

    .line 389
    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->update([B)V

    .line 392
    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->update([B)V

    .line 394
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v15, v3

    .line 395
    .end local v2    # "out":Lorg/xbill/DNS/DNSOutput;
    .local v15, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v16, v2, v4

    .line 396
    .local v16, "time":J
    const/16 v2, 0x20

    shr-long v2, v16, v2

    long-to-int v13, v2

    .line 397
    .local v13, "timeHigh":I
    const-wide v2, 0xffffffffL

    and-long v11, v16, v2

    .line 398
    .local v11, "timeLow":J
    invoke-virtual {v15, v13}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 399
    invoke-virtual {v15, v11, v12}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 400
    invoke-virtual {v15, v14}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 402
    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->update([B)V

    .line 404
    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v18

    .line 405
    .local v18, "signature":[B
    const/16 v19, 0x0

    .line 407
    .local v19, "other":[B
    new-instance v20, Lorg/xbill/DNS/TSIGRecord;

    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v4, 0xff

    const-wide/16 v5, 0x0

    iget-object v7, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 408
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v2, v20

    move v9, v14

    move-object/from16 v10, v18

    move-wide/from16 v23, v11

    .end local v11    # "timeLow":J
    .local v23, "timeLow":J
    move/from16 v11, v21

    move/from16 v12, v22

    move/from16 v21, v13

    .end local v13    # "timeHigh":I
    .local v21, "timeHigh":I
    move-object/from16 v13, v19

    invoke-direct/range {v2 .. v13}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    .line 410
    .local v2, "r":Lorg/xbill/DNS/Record;
    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 411
    iput v3, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 412
    return-void
.end method

.method public generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;
    .locals 26
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "b"    # [B
    .param p3, "error"    # I
    .param p4, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .line 276
    move-object/from16 v0, p0

    move/from16 v13, p3

    const/16 v1, 0x12

    if-eq v13, v1, :cond_0

    .line 277
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    move-object v14, v2

    .local v2, "timeSigned":Ljava/util/Date;
    goto :goto_0

    .line 279
    .end local v2    # "timeSigned":Ljava/util/Date;
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v2

    move-object v14, v2

    .line 281
    .local v14, "timeSigned":Ljava/util/Date;
    :goto_0
    const/4 v2, 0x0

    .line 282
    .local v2, "signing":Z
    if-eqz v13, :cond_2

    if-ne v13, v1, :cond_1

    goto :goto_1

    :cond_1
    move v15, v2

    goto :goto_2

    .line 283
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 284
    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v3}, Ljavax/crypto/Mac;->reset()V

    move v15, v2

    .line 287
    .end local v2    # "signing":Z
    .local v15, "signing":Z
    :goto_2
    const-string/jumbo v2, "tsigfudge"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v2

    .line 288
    .local v2, "fudge":I
    if-ltz v2, :cond_4

    const/16 v3, 0x7fff

    if-le v2, v3, :cond_3

    goto :goto_3

    :cond_3
    move v12, v2

    goto :goto_4

    .line 289
    :cond_4
    :goto_3
    const/16 v2, 0x12c

    move v12, v2

    .line 291
    .end local v2    # "fudge":I
    .local v12, "fudge":I
    :goto_4
    if-eqz p4, :cond_5

    .line 292
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 293
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 294
    if-eqz v15, :cond_5

    .line 295
    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->update([B)V

    .line 296
    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->update([B)V

    .line 301
    .end local v2    # "out":Lorg/xbill/DNS/DNSOutput;
    :cond_5
    if-eqz v15, :cond_6

    .line 302
    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    move-object/from16 v11, p2

    invoke-virtual {v2, v11}, Ljavax/crypto/Mac;->update([B)V

    goto :goto_5

    .line 301
    :cond_6
    move-object/from16 v11, p2

    .line 304
    :goto_5
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 305
    .restart local v2    # "out":Lorg/xbill/DNS/DNSOutput;
    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 306
    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 307
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 308
    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 309
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 310
    .local v3, "time":J
    const/16 v7, 0x20

    shr-long v8, v3, v7

    long-to-int v8, v8

    .line 311
    .local v8, "timeHigh":I
    const-wide v9, 0xffffffffL

    and-long v5, v3, v9

    .line 312
    .local v5, "timeLow":J
    invoke-virtual {v2, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 313
    invoke-virtual {v2, v5, v6}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 314
    invoke-virtual {v2, v12}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 316
    invoke-virtual {v2, v13}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 317
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 319
    if-eqz v15, :cond_7

    .line 320
    iget-object v10, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v10, v7}, Ljavax/crypto/Mac;->update([B)V

    .line 323
    :cond_7
    if-eqz v15, :cond_8

    .line 324
    iget-object v7, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v7}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v7

    move-object/from16 v21, v7

    .local v7, "signature":[B
    goto :goto_6

    .line 326
    .end local v7    # "signature":[B
    :cond_8
    new-array v7, v9, [B

    move-object/from16 v21, v7

    .line 328
    .local v21, "signature":[B
    :goto_6
    const/4 v7, 0x0

    .line 329
    .local v7, "other":[B
    if-ne v13, v1, :cond_9

    .line 330
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v2, v1

    .line 331
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/16 v16, 0x3e8

    div-long v3, v9, v16

    .line 332
    const/16 v1, 0x20

    shr-long v9, v3, v1

    long-to-int v8, v9

    .line 333
    const-wide v9, 0xffffffffL

    and-long v5, v3, v9

    .line 334
    invoke-virtual {v2, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 335
    invoke-virtual {v2, v5, v6}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 336
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v7

    move-object/from16 v16, v2

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move-object/from16 v22, v7

    move/from16 v23, v8

    goto :goto_7

    .line 329
    :cond_9
    move-object/from16 v16, v2

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move-object/from16 v22, v7

    move/from16 v23, v8

    .line 339
    .end local v2    # "out":Lorg/xbill/DNS/DNSOutput;
    .end local v3    # "time":J
    .end local v5    # "timeLow":J
    .end local v7    # "other":[B
    .end local v8    # "timeHigh":I
    .local v16, "out":Lorg/xbill/DNS/DNSOutput;
    .local v17, "time":J
    .local v19, "timeLow":J
    .local v22, "other":[B
    .local v23, "timeHigh":I
    :goto_7
    new-instance v24, Lorg/xbill/DNS/TSIGRecord;

    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v3, 0xff

    const-wide/16 v4, 0x0

    iget-object v6, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 340
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getID()I

    move-result v10

    move-object/from16 v1, v24

    move-object v7, v14

    move v8, v12

    move-object/from16 v9, v21

    move/from16 v11, p3

    move/from16 v25, v12

    .end local v12    # "fudge":I
    .local v25, "fudge":I
    move-object/from16 v12, v22

    invoke-direct/range {v1 .. v12}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    .line 339
    return-object v24
.end method

.method public recordLength()I
    .locals 2

    .line 537
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 538
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x12

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    .line 537
    return v0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B
    .locals 24
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "b"    # [B
    .param p3, "length"    # I
    .param p4, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    iput v2, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 431
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v2

    .line 432
    .local v2, "tsig":Lorg/xbill/DNS/TSIGRecord;
    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v3}, Ljavax/crypto/Mac;->reset()V

    .line 433
    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 434
    return v3

    .line 436
    :cond_0
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    iget-object v5, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x11

    const-string/jumbo v6, "verbose"

    if-eqz v4, :cond_d

    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v4

    iget-object v7, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v7}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v23, v2

    move v0, v5

    goto/16 :goto_2

    .line 441
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 442
    .local v7, "now":J
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 443
    .local v9, "then":J
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v4

    int-to-long v11, v4

    .line 444
    .local v11, "fudge":J
    sub-long v13, v7, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v17, v11, v15

    cmp-long v4, v13, v17

    if-lez v4, :cond_3

    .line 445
    invoke-static {v6}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 446
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "BADTIME failure"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 447
    :cond_2
    const/16 v3, 0x12

    return v3

    .line 450
    :cond_3
    const/16 v4, 0x10

    if-eqz p4, :cond_4

    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v13

    if-eq v13, v5, :cond_4

    .line 451
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v5

    if-eq v5, v4, :cond_4

    .line 453
    new-instance v5, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v5}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 454
    .local v5, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v13

    array-length v13, v13

    invoke-virtual {v5, v13}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 455
    iget-object v13, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavax/crypto/Mac;->update([B)V

    .line 456
    iget-object v13, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavax/crypto/Mac;->update([B)V

    .line 458
    .end local v5    # "out":Lorg/xbill/DNS/DNSOutput;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v5

    const/4 v13, 0x3

    invoke-virtual {v5, v13}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 459
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v5

    .line 460
    .local v5, "header":[B
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v14

    invoke-virtual {v14, v13}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 461
    iget-object v13, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v13, v5}, Ljavax/crypto/Mac;->update([B)V

    .line 463
    iget v13, v1, Lorg/xbill/DNS/Message;->tsigstart:I

    array-length v14, v5

    sub-int/2addr v13, v14

    .line 464
    .local v13, "len":I
    iget-object v14, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    array-length v3, v5

    move-object/from16 v18, v5

    move-object/from16 v5, p2

    .end local v5    # "header":[B
    .local v18, "header":[B
    invoke-virtual {v14, v5, v3, v13}, Ljavax/crypto/Mac;->update([BII)V

    .line 466
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 467
    .local v3, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v14

    invoke-virtual {v14, v3}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 468
    iget v14, v2, Lorg/xbill/DNS/TSIGRecord;->dclass:I

    invoke-virtual {v3, v14}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 469
    iget-wide v4, v2, Lorg/xbill/DNS/TSIGRecord;->ttl:J

    invoke-virtual {v3, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 470
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 471
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v15

    .line 472
    .local v4, "time":J
    const/16 v15, 0x20

    shr-long v14, v4, v15

    long-to-int v15, v14

    .line 473
    .local v15, "timeHigh":I
    const-wide v19, 0xffffffffL

    move-wide/from16 v21, v7

    .end local v7    # "now":J
    .local v21, "now":J
    and-long v7, v4, v19

    .line 474
    .local v7, "timeLow":J
    invoke-virtual {v3, v15}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 475
    invoke-virtual {v3, v7, v8}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 476
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v14

    invoke-virtual {v3, v14}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 477
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v14

    invoke-virtual {v3, v14}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 478
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v14

    move-wide/from16 v19, v4

    .end local v4    # "time":J
    .local v19, "time":J
    const/4 v4, 0x0

    if-eqz v14, :cond_5

    .line 479
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v3, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 480
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_0

    .line 482
    :cond_5
    invoke-virtual {v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 485
    :goto_0
    iget-object v5, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v3}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljavax/crypto/Mac;->update([B)V

    .line 487
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v5

    .line 488
    .local v5, "signature":[B
    iget-object v14, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v14}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v14

    .line 490
    .local v14, "digestLength":I
    iget-object v4, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v4}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v2

    .end local v2    # "tsig":Lorg/xbill/DNS/TSIGRecord;
    .local v23, "tsig":Lorg/xbill/DNS/TSIGRecord;
    const-string v2, "md5"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 491
    const/16 v2, 0xa

    .local v2, "minDigestLength":I
    goto :goto_1

    .line 493
    .end local v2    # "minDigestLength":I
    :cond_6
    div-int/lit8 v2, v14, 0x2

    .line 495
    .restart local v2    # "minDigestLength":I
    :goto_1
    array-length v4, v5

    if-le v4, v14, :cond_8

    .line 496
    invoke-static {v6}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 497
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "BADSIG: signature too long"

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 498
    :cond_7
    const/16 v4, 0x10

    return v4

    .line 499
    :cond_8
    move v4, v14

    .end local v14    # "digestLength":I
    .local v4, "digestLength":I
    array-length v14, v5

    if-ge v14, v2, :cond_a

    .line 500
    invoke-static {v6}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 501
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v14, "BADSIG: signature too short"

    invoke-virtual {v6, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 502
    :cond_9
    const/16 v6, 0x10

    return v6

    .line 503
    :cond_a
    iget-object v14, v0, Lorg/xbill/DNS/TSIG;->hmac:Ljavax/crypto/Mac;

    const/4 v0, 0x1

    invoke-static {v14, v5, v0}, Lorg/xbill/DNS/TSIG;->verify(Ljavax/crypto/Mac;[BZ)Z

    move-result v14

    if-nez v14, :cond_c

    .line 504
    invoke-static {v6}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 505
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "BADSIG: signature verification"

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 506
    :cond_b
    const/16 v0, 0x10

    return v0

    .line 509
    :cond_c
    const/4 v0, 0x1

    iput v0, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 510
    const/4 v0, 0x0

    return v0

    .line 436
    .end local v3    # "out":Lorg/xbill/DNS/DNSOutput;
    .end local v4    # "digestLength":I
    .end local v5    # "signature":[B
    .end local v7    # "timeLow":J
    .end local v9    # "then":J
    .end local v11    # "fudge":J
    .end local v13    # "len":I
    .end local v15    # "timeHigh":I
    .end local v18    # "header":[B
    .end local v19    # "time":J
    .end local v21    # "now":J
    .end local v23    # "tsig":Lorg/xbill/DNS/TSIGRecord;
    .local v2, "tsig":Lorg/xbill/DNS/TSIGRecord;
    :cond_d
    move-object/from16 v23, v2

    move v0, v5

    .line 437
    .end local v2    # "tsig":Lorg/xbill/DNS/TSIGRecord;
    .restart local v23    # "tsig":Lorg/xbill/DNS/TSIGRecord;
    :goto_2
    invoke-static {v6}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 438
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "BADKEY failure"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 439
    :cond_e
    return v0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I
    .locals 1
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "b"    # [B
    .param p3, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .line 528
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B

    move-result v0

    return v0
.end method
