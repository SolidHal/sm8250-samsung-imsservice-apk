.class public Lcom/sec/internal/ims/util/AkaAuth;
.super Ljava/lang/Object;
.source "AkaAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/util/AkaAuth;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/AkaAuth;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAkaResponse(ILjava/lang/String;)Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;
    .locals 11
    .param p0, "phoneId"    # I
    .param p1, "challenge"    # Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 43
    .local v0, "challengeByte":[B
    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "nonce":Ljava/lang/String;
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    .line 46
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "isimRes":Ljava/lang/String;
    :goto_0
    if-nez v4, :cond_1

    .line 48
    sget-object v5, Lcom/sec/internal/ims/util/AkaAuth;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getAkaResponse(): getIsimResponse is null."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-object v3

    .line 51
    :cond_1
    const-string v5, ""

    .line 52
    .local v5, "password":Ljava/lang/String;
    const-string v6, ""

    .line 53
    .local v6, "encrKey":Ljava/lang/String;
    const-string v7, ""

    .line 55
    .local v7, "authKey":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/sec/internal/ims/config/util/TelephonySupport;->buildAkaResponse(Ljava/lang/String;)Lcom/sec/internal/ims/config/util/AkaResponse;

    move-result-object v8

    .line 56
    .local v8, "res":Lcom/sec/internal/ims/config/util/AkaResponse;
    if-eqz v8, :cond_2

    .line 57
    invoke-virtual {v8}, Lcom/sec/internal/ims/config/util/AkaResponse;->getRes()[B

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/sec/internal/ims/config/util/AkaResponse;->getCk()[B

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/sec/internal/ims/config/util/AkaResponse;->getIk()[B

    move-result-object v9

    if-eqz v9, :cond_3

    .line 59
    invoke-virtual {v8}, Lcom/sec/internal/ims/config/util/AkaResponse;->getRes()[B

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 60
    invoke-virtual {v8}, Lcom/sec/internal/ims/config/util/AkaResponse;->getCk()[B

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 61
    invoke-virtual {v8}, Lcom/sec/internal/ims/config/util/AkaResponse;->getIk()[B

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 62
    new-instance v9, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;

    invoke-direct {v9, v5, v6, v7}, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    .line 65
    :cond_2
    sget-object v9, Lcom/sec/internal/ims/util/AkaAuth;->LOG_TAG:Ljava/lang/String;

    const-string v10, "getAkaResponse(): response wrongly encoded."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v8    # "res":Lcom/sec/internal/ims/config/util/AkaResponse;
    :cond_3
    goto :goto_1

    .line 67
    :catch_0
    move-exception v8

    .line 68
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    sget-object v9, Lcom/sec/internal/ims/util/AkaAuth;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Parsing failed for response"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    return-object v3
.end method
