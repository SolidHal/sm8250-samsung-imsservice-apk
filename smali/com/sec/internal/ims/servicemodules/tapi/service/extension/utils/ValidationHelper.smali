.class public Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;
.super Ljava/lang/Object;
.source "ValidationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2hex(B)[C
    .locals 6
    .param p0, "b"    # B

    .line 19
    const-string v0, "0123456789ABCDEF"

    .line 20
    .local v0, "lookup":Ljava/lang/String;
    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    .line 21
    .local v1, "c1":I
    and-int/lit8 v2, p0, 0xf

    .line 22
    .local v2, "c2":I
    const/4 v3, 0x2

    new-array v3, v3, [C

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x0

    aput-char v4, v3, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    aput-char v4, v3, v5

    return-object v3
.end method

.method public static checkKeyLength(Ljava/security/PublicKey;)Z
    .locals 3
    .param p0, "key"    # Ljava/security/PublicKey;

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "result":Z
    instance-of v1, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_0

    .line 85
    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 86
    .local v1, "keyLen":I
    const/16 v2, 0x800

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 88
    .end local v1    # "keyLen":I
    :cond_0
    return v0
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFingerPrint(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 5
    .param p0, "sig"    # Landroid/content/pm/Signature;

    .line 38
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 39
    .local v0, "rawCert":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 40
    .local v1, "certStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 42
    .local v2, "x509Cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    const-string v3, "X509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 43
    .local v3, "certFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v3, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 47
    .end local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    goto :goto_0

    .line 45
    :catch_0
    move-exception v3

    .line 46
    .local v3, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 48
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :goto_0
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->loadFingerprint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static hash([B)Ljava/lang/String;
    .locals 6
    .param p0, "key"    # [B

    .line 27
    :try_start_0
    const-string v0, "SHA-224"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 28
    .local v0, "sha":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 29
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 30
    .local v2, "b64":Ljava/lang/String;
    const/16 v3, 0x2b

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    const/16 v5, 0x5f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 31
    .end local v0    # "sha":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "b64":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isContained([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "c14nAlgorithms"    # [Ljava/lang/String;
    .param p1, "c14nAlgorithm"    # Ljava/lang/String;

    .line 74
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 75
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    return v1

    .line 74
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isTapiAuthorisationSupports()Z
    .locals 1

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method private static loadFingerprint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 5
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 54
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    .local v0, "digest":[B
    :try_start_1
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    :try_start_2
    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    .line 60
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v1, "result":Ljava/lang/StringBuilder;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 62
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 63
    aget-byte v4, v0, v3

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->byte2hex(B)[C

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 64
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    .end local v3    # "i":I
    :cond_0
    aget-byte v3, v0, v2

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->byte2hex(B)[C

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    .line 68
    .end local v0    # "digest":[B
    .end local v1    # "result":Ljava/lang/StringBuilder;
    .end local v2    # "len":I
    :catch_1
    move-exception v0

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method
