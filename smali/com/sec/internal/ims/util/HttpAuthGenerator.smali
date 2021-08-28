.class public Lcom/sec/internal/ims/util/HttpAuthGenerator;
.super Ljava/lang/Object;
.source "HttpAuthGenerator.java"


# static fields
.field private static final AKAV1_MD5:Ljava/lang/String; = "AKAv1-MD5"

.field private static final AKAV2_MD5:Ljava/lang/String; = "AKAv2-MD5"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/sec/internal/ims/util/HttpAuthGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "challenge"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateAuthHeader: challenge= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateAuthHeader: user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "element":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 65
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string v3, "Digest"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->generateDigestAuthHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 67
    :cond_0
    aget-object v1, v0, v1

    const-string v2, "Basic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-static {p3, p4}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->generateBasicAuthHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 71
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 62
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "challenge is not WWW-Authenticate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static generateBasicAuthHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateDigestAuthHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "challenge"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .line 193
    new-instance v0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;

    invoke-direct {v0}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;-><init>()V

    .line 194
    .local v0, "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v7

    .line 195
    .local v7, "wwwAuthParsedHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    invoke-virtual {v7}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v3

    move-object v1, p3

    move-object v2, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "slotIndex"    # I
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "wwwAuthenticateHeader"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p0, "slotIndex"    # I
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "wwwAuthenticateHeader"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "cipherSuite"    # Ljava/lang/String;

    .line 110
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    .line 111
    .local v3, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    .line 112
    .local v4, "imConfig":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    new-instance v0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;

    invoke-direct {v0}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;-><init>()V

    move-object v5, v0

    .line 113
    .local v5, "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    if-eqz v3, :cond_0

    const-string v0, "ft_with_gba"

    invoke-interface {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 114
    .local v6, "isFTwithGba":Z
    invoke-virtual {v5, v1}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v7

    .line 115
    .local v7, "wwwAuthParsedHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    invoke-virtual {v7}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "realm":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    const-string v9, "getAuthorizationHeader: requestUrl is empty. get url from imConfig"

    invoke-static {v0, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .local v0, "url":Ljava/lang/String;
    goto :goto_1

    .line 122
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    move-object v9, v0

    .line 124
    .local v9, "url":Ljava/lang/String;
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "url = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v10, "/"

    .line 130
    .local v10, "path":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "naf":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 132
    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 133
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v11

    .line 137
    .end local v0    # "naf":Ljava/net/URI;
    :cond_2
    goto :goto_2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 139
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :goto_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const-string v10, "/"

    .line 142
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "path = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v11, ""

    .line 146
    .local v11, "response":Ljava/lang/String;
    const-string/jumbo v12, "response: "

    if-eqz v6, :cond_4

    .line 147
    sget-object v0, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    const-string v13, "FT with GBA is on"

    invoke-static {v0, v13}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/gba/GbaBootstrapping;->getInstance(I)Lcom/sec/internal/ims/gba/GbaBootstrapping;

    move-result-object v0

    .line 151
    .local v0, "gbaBootstrapping":Lcom/sec/internal/ims/gba/GbaBootstrapping;
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpTrustAllCerts()Z

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v14, p4

    :try_start_2
    invoke-virtual {v0, v9, v8, v14, v13}, Lcom/sec/internal/ims/gba/GbaBootstrapping;->getBootstrappedSa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/gba/BootstrappedSa;

    move-result-object v13

    .line 155
    .local v13, "bootstrappedSa":Lcom/sec/internal/ims/gba/BootstrappedSa;
    nop

    .line 156
    invoke-virtual {v13}, Lcom/sec/internal/ims/gba/BootstrappedSa;->getBtid()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "gbaBootstrapping":Lcom/sec/internal/ims/gba/GbaBootstrapping;
    .local v16, "gbaBootstrapping":Lcom/sec/internal/ims/gba/GbaBootstrapping;
    invoke-virtual {v13}, Lcom/sec/internal/ims/gba/BootstrappedSa;->getGbaKey()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v1, v10, v2, v15, v0}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v11, v0

    .line 160
    .end local v13    # "bootstrappedSa":Lcom/sec/internal/ims/gba/BootstrappedSa;
    .end local v16    # "gbaBootstrapping":Lcom/sec/internal/ims/gba/GbaBootstrapping;
    goto :goto_4

    .line 158
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v14, p4

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    sget-object v0, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v15, p0

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    goto/16 :goto_7

    .line 163
    :cond_4
    move-object/from16 v14, p4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsPwd()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "password":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v13

    .line 165
    .local v13, "algo":Ljava/lang/String;
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "password":Ljava/lang/String;
    .local v16, "password":Ljava/lang/String;
    const-string v0, "aka"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 166
    invoke-virtual {v7}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v0

    move/from16 v15, p0

    invoke-static {v15, v0}, Lcom/sec/internal/ims/util/AkaAuth;->getAkaResponse(ILjava/lang/String;)Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;

    move-result-object v0

    .line 167
    .local v0, "akaResponse":Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;
    if-eqz v0, :cond_7

    .line 168
    move-object/from16 v17, v3

    .end local v3    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v17, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    const-string v3, "AKAv1-MD5"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 169
    invoke-virtual {v0}, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->getRes()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v18, v5

    .end local v16    # "password":Ljava/lang/String;
    .local v3, "password":Ljava/lang/String;
    goto :goto_6

    .line 170
    .end local v3    # "password":Ljava/lang/String;
    .restart local v16    # "password":Ljava/lang/String;
    :cond_5
    const-string v3, "AKAv2-MD5"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v5

    .end local v5    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .local v18, "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    invoke-virtual {v0}, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->getRes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->getAuthKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->getEncrKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v16    # "password":Ljava/lang/String;
    .restart local v3    # "password":Ljava/lang/String;
    goto :goto_6

    .line 170
    .end local v3    # "password":Ljava/lang/String;
    .end local v18    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .restart local v5    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .restart local v16    # "password":Ljava/lang/String;
    :cond_6
    move-object/from16 v18, v5

    .end local v5    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .restart local v18    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    goto :goto_5

    .line 167
    .end local v17    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v18    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .local v3, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v5    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    :cond_7
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    .end local v3    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v5    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .restart local v17    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v18    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    goto :goto_5

    .line 165
    .end local v0    # "akaResponse":Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;
    .end local v17    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v18    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .restart local v3    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v5    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    :cond_8
    move/from16 v15, p0

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    .end local v3    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v5    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .restart local v17    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v18    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    goto :goto_5

    .end local v16    # "password":Ljava/lang/String;
    .end local v17    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v18    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .local v0, "password":Ljava/lang/String;
    .restart local v3    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v5    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    :cond_9
    move/from16 v15, p0

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    .line 175
    .end local v0    # "password":Ljava/lang/String;
    .end local v3    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v5    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .restart local v16    # "password":Ljava/lang/String;
    .restart local v17    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v18    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    :goto_5
    move-object/from16 v0, v16

    .end local v16    # "password":Ljava/lang/String;
    .restart local v0    # "password":Ljava/lang/String;
    :goto_6
    nop

    .line 176
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsUser()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {v1, v10, v2, v3, v0}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 177
    sget-object v3, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .end local v0    # "password":Ljava/lang/String;
    .end local v13    # "algo":Ljava/lang/String;
    :goto_7
    return-object v11
.end method

.method public static getEAPAkaChallengeResponse(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "phoneId"    # I
    .param p1, "eapChallenge"    # Ljava/lang/String;

    .line 75
    const-string v0, "eap-relay-packet"

    const/4 v1, 0x0

    .line 77
    .local v1, "akaResp":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "eapMessage":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v4

    .line 81
    .local v4, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v4, :cond_0

    .line 82
    return-object v1

    .line 84
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v5

    .line 85
    .local v5, "challenge":[B
    invoke-static {v5}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "akaChallenge":Ljava/lang/String;
    nop

    .line 87
    invoke-static {v6}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->getNonce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 86
    invoke-interface {v4, v7}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "isimResponse":Ljava/lang/String;
    nop

    .line 89
    invoke-static {p0}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->composeRootNai(I)Ljava/lang/String;

    move-result-object v8

    .line 88
    invoke-static {v6, v7, v8}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->generateChallengeResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "eapAkaResp":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 91
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v9, "respJson":Lorg/json/JSONObject;
    invoke-virtual {v9, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 95
    .end local v9    # "respJson":Lorg/json/JSONObject;
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleEapAkaChallenge akaResp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "eapMessage":Ljava/lang/String;
    .end local v4    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v5    # "challenge":[B
    .end local v6    # "akaChallenge":Ljava/lang/String;
    .end local v7    # "isimResponse":Ljava/lang/String;
    .end local v8    # "eapAkaResp":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 100
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v1
.end method

.method private static getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .locals 1
    .param p0, "slotIndex"    # I

    .line 188
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getInstance(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    return-object v0
.end method

.method private static getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 1
    .param p0, "slotIndex"    # I

    .line 184
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    return-object v0
.end method
