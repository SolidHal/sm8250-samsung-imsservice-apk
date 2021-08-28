.class public final enum Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;
.super Ljava/lang/Enum;
.source "DigestAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/httpclient/DigestAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum AKAV1_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum AKAV2_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum MD5_SESSION:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum UNKNOWN:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum md5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 56
    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->UNKNOWN:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "MD5"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "MD5_SESSION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5_SESSION:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "AKAV1_MD5"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV1_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "AKAV2_MD5"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV2_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "md5"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->md5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    .line 55
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    sget-object v8, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->UNKNOWN:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    aput-object v8, v1, v2

    sget-object v2, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5_SESSION:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV1_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV2_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->$VALUES:[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getAlgoType(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->UNKNOWN:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object v0

    .line 64
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "AKAv2-MD5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "AKAv1-MD5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "md5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v5

    goto :goto_0

    :sswitch_3
    const-string v1, "MD5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_4
    const-string v1, "MD5-sess"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    .line 76
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->UNKNOWN:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object v0

    .line 74
    :cond_2
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV2_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object v0

    .line 72
    :cond_3
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV1_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object v0

    .line 70
    :cond_4
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5_SESSION:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object v0

    .line 68
    :cond_5
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->md5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object v0

    .line 66
    :cond_6
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x56fcf8df -> :sswitch_4
        0x1297e -> :sswitch_3
        0x1a57e -> :sswitch_2
        0x4ef15743 -> :sswitch_1
        0x4eff6ec4 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    const-class v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;
    .locals 1

    .line 55
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->$VALUES:[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    invoke-virtual {v0}, [Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$1;->$SwitchMap$com$sec$internal$helper$httpclient$DigestAuth$Algo:[I

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 94
    const-string v0, ""

    return-object v0

    .line 92
    :cond_0
    const-string v0, "AKAv2-MD5"

    return-object v0

    .line 90
    :cond_1
    const-string v0, "AKAv1-MD5"

    return-object v0

    .line 88
    :cond_2
    const-string v0, "MD5-sess"

    return-object v0

    .line 86
    :cond_3
    const-string v0, "md5"

    return-object v0

    .line 84
    :cond_4
    const-string v0, "MD5"

    return-object v0
.end method
