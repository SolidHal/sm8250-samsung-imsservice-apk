.class public final enum Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;
.super Ljava/lang/Enum;
.source "ImSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/ImSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

.field public static final enum CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

.field public static final enum CLOSING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

.field public static final enum ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

.field public static final enum FAILED_MEDIA:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

.field public static final enum INITIAL:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

.field public static final enum STARTING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 2632
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 2633
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    const-string v1, "STARTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 2634
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    const-string v1, "ESTABLISHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 2635
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    const-string v1, "CLOSING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 2636
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    const-string v1, "CLOSED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 2637
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    const-string v1, "FAILED_MEDIA"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->FAILED_MEDIA:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 2631
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    aput-object v8, v1, v2

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2631
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2631
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;
    .locals 1

    .line 2631
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    return-object v0
.end method
