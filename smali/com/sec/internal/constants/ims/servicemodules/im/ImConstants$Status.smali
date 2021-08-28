.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
.super Ljava/lang/Enum;
.source "ImConstants.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum BLOCKED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum QUEUED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 68
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "UNREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 72
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "READ"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 76
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "SENDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 80
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "SENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 84
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "FAILED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 88
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "TO_SEND"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 92
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "BLOCKED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->BLOCKED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 96
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "QUEUED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->QUEUED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 100
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "IRRELEVANT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 64
    const/16 v1, 0x9

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    aput-object v11, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->BLOCKED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->QUEUED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 102
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

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

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->id:I

    .line 107
    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 2
    .param p0, "id"    # I

    .line 110
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 64
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 1

    .line 64
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 2
    .param p1, "id"    # I

    .line 120
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object v0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->id:I

    return v0
.end method
