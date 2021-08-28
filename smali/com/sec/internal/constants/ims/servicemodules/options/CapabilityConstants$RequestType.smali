.class public final enum Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
.super Ljava/lang/Enum;
.source "CapabilityConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

.field public static final enum REQUEST_TYPE_CONTACT_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

.field public static final enum REQUEST_TYPE_LAZY:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

.field public static final enum REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

.field public static final enum REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 31
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const-string v1, "REQUEST_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    .line 32
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const-string v1, "REQUEST_TYPE_LAZY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_LAZY:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    .line 33
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const-string v1, "REQUEST_TYPE_PERIODIC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    .line 34
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const-string v1, "REQUEST_TYPE_CONTACT_CHANGE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_CONTACT_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    .line 30
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_LAZY:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
    .locals 1

    .line 30
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    return-object v0
.end method
