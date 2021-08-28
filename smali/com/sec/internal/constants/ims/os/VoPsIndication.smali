.class public final enum Lcom/sec/internal/constants/ims/os/VoPsIndication;
.super Ljava/lang/Enum;
.source "VoPsIndication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/os/VoPsIndication;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/os/VoPsIndication;

.field public static final enum NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

.field public static final enum SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/os/VoPsIndication;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/os/VoPsIndication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;

    const-string v1, "SUPPORTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/constants/ims/os/VoPsIndication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 19
    new-instance v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;

    const-string v1, "NOT_SUPPORTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/constants/ims/os/VoPsIndication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 16
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v5, Lcom/sec/internal/constants/ims/os/VoPsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->$VALUES:[Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static translateVops(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .locals 1
    .param p0, "vops"    # I

    .line 35
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 36
    sget-object v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-object v0

    .line 37
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 38
    sget-object v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-object v0

    .line 41
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-object v0
.end method

.method public static translateVops(Ljava/lang/String;)Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .locals 2
    .param p0, "strVops"    # Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    .line 26
    .local v0, "vops":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 29
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 31
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/constants/ims/os/VoPsIndication;->translateVops(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 16
    const-class v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .locals 1

    .line 16
    sget-object v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->$VALUES:[Lcom/sec/internal/constants/ims/os/VoPsIndication;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/os/VoPsIndication;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-object v0
.end method
