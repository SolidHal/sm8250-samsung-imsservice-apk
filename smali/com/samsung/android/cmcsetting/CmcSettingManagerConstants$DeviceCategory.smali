.class public final enum Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;
.super Ljava/lang/Enum;
.source "CmcSettingManagerConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

.field public static final enum DEVICE_CATEGORY_BT_WATCH:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

.field public static final enum DEVICE_CATEGORY_LAPTOP:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

.field public static final enum DEVICE_CATEGORY_PC:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

.field public static final enum DEVICE_CATEGORY_PHONE:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

.field public static final enum DEVICE_CATEGORY_SPEAKER:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

.field public static final enum DEVICE_CATEGORY_TABLET:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

.field public static final enum DEVICE_CATEGORY_TV:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

.field public static final enum DEVICE_CATEGORY_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 19
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    const-string v1, "DEVICE_CATEGORY_PHONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_PHONE:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    .line 20
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    const-string v1, "DEVICE_CATEGORY_TABLET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TABLET:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    .line 21
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    const-string v1, "DEVICE_CATEGORY_BT_WATCH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_BT_WATCH:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    .line 22
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    const-string v1, "DEVICE_CATEGORY_SPEAKER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_SPEAKER:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    .line 23
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    const-string v1, "DEVICE_CATEGORY_PC"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_PC:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    .line 24
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    const-string v1, "DEVICE_CATEGORY_TV"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TV:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    .line 25
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    const-string v1, "DEVICE_CATEGORY_LAPTOP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_LAPTOP:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    .line 26
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    const-string v1, "DEVICE_CATEGORY_UNDEFINED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    .line 18
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    sget-object v10, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_PHONE:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    aput-object v10, v1, v2

    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TABLET:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_BT_WATCH:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_SPEAKER:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_PC:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    aput-object v2, v1, v6

    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TV:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    aput-object v2, v1, v7

    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_LAPTOP:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->$VALUES:[Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;
    .locals 1

    .line 18
    const-class v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;
    .locals 1

    .line 18
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->$VALUES:[Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-object v0
.end method
