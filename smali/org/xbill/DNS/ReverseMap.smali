.class public final Lorg/xbill/DNS/ReverseMap;
.super Ljava/lang/Object;
.source "ReverseMap.java"


# static fields
.field private static inaddr4:Lorg/xbill/DNS/Name;

.field private static inaddr6:Lorg/xbill/DNS/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "in-addr.arpa."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/ReverseMap;->inaddr4:Lorg/xbill/DNS/Name;

    .line 18
    const-string v0, "ip6.arpa."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/ReverseMap;->inaddr6:Lorg/xbill/DNS/Name;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAddress(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 3
    .param p0, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 123
    .local v0, "array":[B
    if-nez v0, :cond_0

    .line 124
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 125
    :cond_0
    if-eqz v0, :cond_1

    .line 127
    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v1

    return-object v1

    .line 126
    :cond_1
    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "Invalid IP address"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromAddress(Ljava/lang/String;I)Lorg/xbill/DNS/Name;
    .locals 3
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "family"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 107
    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 108
    .local v0, "array":[B
    if-eqz v0, :cond_0

    .line 110
    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v1

    return-object v1

    .line 109
    :cond_0
    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "Invalid IP address"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 95
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public static fromAddress([B)Lorg/xbill/DNS/Name;
    .locals 8
    .param p0, "addr"    # [B

    .line 32
    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    array-length v0, p0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "array must contain 4 or 16 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .local v0, "sb":Ljava/lang/StringBuffer;
    array-length v2, p0

    const-string v3, "."

    const/4 v4, 0x1

    if-ne v2, v1, :cond_4

    .line 38
    array-length v2, p0

    sub-int/2addr v2, v4

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 39
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 40
    if-lez v2, :cond_2

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v2    # "i":I
    :cond_3
    goto :goto_4

    .line 44
    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 45
    .local v2, "nibbles":[I
    array-length v5, p0

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_8

    .line 46
    const/4 v6, 0x0

    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v1

    aput v7, v2, v6

    .line 47
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    and-int/lit8 v6, v6, 0xf

    aput v6, v2, v4

    .line 48
    array-length v6, v2

    sub-int/2addr v6, v4

    .local v6, "j":I
    :goto_3
    if-ltz v6, :cond_7

    .line 49
    aget v7, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    if-gtz v5, :cond_5

    if-lez v6, :cond_6

    .line 51
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 45
    .end local v6    # "j":I
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 57
    .end local v2    # "nibbles":[I
    .end local v5    # "i":I
    :cond_8
    :goto_4
    :try_start_0
    array-length v2, p0

    if-ne v2, v1, :cond_9

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/xbill/DNS/ReverseMap;->inaddr4:Lorg/xbill/DNS/Name;

    invoke-static {v1, v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    return-object v1

    .line 60
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/xbill/DNS/ReverseMap;->inaddr6:Lorg/xbill/DNS/Name;

    invoke-static {v1, v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "name cannot be invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static fromAddress([I)Lorg/xbill/DNS/Name;
    .locals 4
    .param p0, "addr"    # [I

    .line 76
    array-length v0, p0

    new-array v0, v0, [B

    .line 77
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 78
    aget v2, p0, v1

    if-ltz v2, :cond_0

    aget v2, p0, v1

    const/16 v3, 0xff

    if-gt v2, v3, :cond_0

    .line 82
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "array must contain values between 0 and 255"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v1

    return-object v1
.end method
