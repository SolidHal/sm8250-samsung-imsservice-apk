.class public final enum Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
.super Ljava/lang/Enum;
.source "SyncMsgType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field public static final enum CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field public static final enum DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field public static final enum FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field public static final enum MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field public static final enum VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field public static final enum VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 5
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string v1, "MESSAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string v1, "FAX"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string v1, "VM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string v1, "CALLLOG"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string v1, "VM_GREETINGS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 3
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    aput-object v8, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->mId:I

    .line 11
    return-void
.end method

.method public static valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .locals 6
    .param p0, "id"    # I

    .line 19
    const/4 v0, 0x0

    .line 21
    .local v0, "msgType":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->values()[Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 22
    .local v4, "r":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    iget v5, v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->mId:I

    if-ne v5, p0, :cond_0

    .line 23
    move-object v0, v4

    .line 24
    goto :goto_1

    .line 21
    .end local v4    # "r":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->mId:I

    return v0
.end method
