.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;
.super Ljava/lang/Enum;
.source "ImConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessagingUX"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

.field public static final enum INTEGRATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

.field public static final enum SEAMLESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    const-string v1, "SEAMLESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;->SEAMLESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    const-string v1, "INTEGRATED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;->INTEGRATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    .line 30
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;->SEAMLESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;
    .locals 1

    .line 30
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    return-object v0
.end method
