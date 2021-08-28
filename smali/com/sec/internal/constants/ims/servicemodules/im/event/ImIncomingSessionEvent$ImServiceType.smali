.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;
.super Ljava/lang/Enum;
.source "ImIncomingSessionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;

.field public static final enum NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;

    .line 53
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;

    aput-object v0, v1, v2

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;
    .locals 1

    .line 53
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;

    return-object v0
.end method
