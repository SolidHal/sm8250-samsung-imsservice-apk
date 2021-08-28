.class public final enum Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;
.super Ljava/lang/Enum;
.source "ImSessionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImSessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

.field public static final enum ACCEPTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

.field public static final enum CLOSING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

.field public static final enum ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

.field public static final enum INITIAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

.field public static final enum PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

.field public static final enum STARTED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

.field public static final enum STARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 78
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 79
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    const-string v1, "PENDING_INVITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 80
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    const-string v1, "STARTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 81
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    const-string v1, "STARTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 82
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    const-string v1, "ACCEPTING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ACCEPTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 83
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    const-string v1, "ESTABLISHED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 84
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    const-string v1, "CLOSING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 77
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v9, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    aput-object v9, v1, v2

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ACCEPTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 77
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;
    .locals 1

    .line 77
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    return-object v0
.end method
