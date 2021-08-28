.class final enum Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;
.super Ljava/lang/Enum;
.source "CmcSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsetting/CmcSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OBSERVER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum all:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum callActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum deviceInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum lineInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum mainCctivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum messageActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum networkMode:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum saInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum watchActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 154
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v1, "mainCctivation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->mainCctivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v1, "messageActivation"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->messageActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v1, "callActivation"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->callActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string/jumbo v1, "watchActivation"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->watchActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    .line 155
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v1, "networkMode"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->networkMode:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v1, "lineInfo"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->lineInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v1, "deviceInfo"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->deviceInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string/jumbo v1, "saInfo"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->saInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v1, "all"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->all:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    .line 153
    const/16 v1, 0x9

    new-array v1, v1, [Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    sget-object v11, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->mainCctivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    aput-object v11, v1, v2

    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->messageActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->callActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->watchActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->networkMode:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    aput-object v2, v1, v6

    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->lineInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    aput-object v2, v1, v7

    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->deviceInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    aput-object v2, v1, v8

    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->saInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->$VALUES:[Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;
    .locals 1

    .line 153
    const-class v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;
    .locals 1

    .line 153
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->$VALUES:[Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    return-object v0
.end method
